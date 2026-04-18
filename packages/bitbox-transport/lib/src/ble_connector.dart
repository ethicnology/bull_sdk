import 'dart:async';
import 'dart:typed_data';
import 'package:bull_sdk/bitbox.dart' as api;
import 'package:universal_ble/universal_ble.dart';

/// BitBox02 Nova BLE Service and Characteristic UUIDs
const bleServiceUuid = 'E1511A45-F3DB-44C0-82B8-6C880790D1F1';
const bleRxUuid = '799D485C-D354-4ED0-B577-F8EE79EC275A';
const bleTxUuid = '419572A5-9F53-4EB1-8DB7-61BCAB928867';
const bleProductUuid = '9D1C9A77-8B03-4E49-8053-3955CDA7DA93';

/// Discovered BitBox02 Nova device via BLE
class BitBox02BleDevice {
  final String deviceId;
  final String? name;

  const BitBox02BleDevice({required this.deviceId, this.name});

  @override
  String toString() => 'BitBox02BleDevice(id: $deviceId, name: $name)';
}

/// BLE connector for BitBox02 Nova communication.
///
/// Bridges BLE characteristic reads/writes to Rust's in-memory queues,
/// using the same protocol as USB (64-byte U2F HID frames).
class BleConnector {
  static final BleConnector _instance = BleConnector._internal();
  factory BleConnector() => _instance;
  BleConnector._internal();

  String? _connectedDeviceId;
  String? _serialNumber;
  Timer? _pollTimer;
  bool _isRunning = false;

  /// Scan for BitBox02 Nova devices advertising the BLE service
  Future<List<BitBox02BleDevice>> scanDevices({
    Duration timeout = const Duration(seconds: 5),
  }) async {
    final devices = <BitBox02BleDevice>[];
    final completer = Completer<List<BitBox02BleDevice>>();

    final subscription = UniversalBle.scanStream.listen((device) {
      if (!devices.any((d) => d.deviceId == device.deviceId)) {
        devices.add(BitBox02BleDevice(
          deviceId: device.deviceId,
          name: device.name,
        ));
      }
    });

    await UniversalBle.startScan(
      scanFilter: ScanFilter(withServices: [bleServiceUuid]),
    );

    Timer(timeout, () async {
      await UniversalBle.stopScan();
      await subscription.cancel();
      if (!completer.isCompleted) {
        completer.complete(devices);
      }
    });

    return completer.future;
  }

  /// Connect to a BitBox02 Nova and start shuttling data to Rust queues
  Future<bool> connect({
    required String deviceId,
    required String serialNumber,
    bool autoConnect = false,
  }) async {
    try {
      _serialNumber = serialNumber;

      // Listen for connection state
      final connectionCompleter = Completer<bool>();
      final connectionSub = UniversalBle.connectionStream(deviceId).listen(
        (isConnected) {
          if (!connectionCompleter.isCompleted) {
            connectionCompleter.complete(isConnected);
          }
        },
      );

      await UniversalBle.connect(deviceId, autoConnect: autoConnect);

      final connected = await connectionCompleter.future.timeout(
        const Duration(seconds: 10),
        onTimeout: () => false,
      );
      await connectionSub.cancel();

      if (!connected) return false;

      _connectedDeviceId = deviceId;

      // Discover services
      await UniversalBle.discoverServices(deviceId);

      // Subscribe to TX indications (device → app)
      UniversalBle.onValueChange = (id, characteristicId, value, _) {
        if (id == deviceId &&
            characteristicId.toUpperCase() == bleTxUuid.toUpperCase()) {
          api.setUsbReadDataWrapper(
            serialNumber: serialNumber,
            data: value.toList(),
          );
        }
      };

      await UniversalBle.subscribeIndications(
        deviceId,
        bleServiceUuid,
        bleTxUuid,
      );

      // Start polling Rust's write queue and sending via BLE
      _startPolling(deviceId);

      return true;
    } catch (e) {
      return false;
    }
  }

  /// Read the PRODUCT characteristic to get device info JSON
  Future<String?> readProductInfo() async {
    if (_connectedDeviceId == null) return null;
    try {
      final data = await UniversalBle.read(
        _connectedDeviceId!,
        bleServiceUuid,
        bleProductUuid,
      );
      return String.fromCharCodes(data);
    } catch (e) {
      return null;
    }
  }

  void _startPolling(String deviceId) {
    if (_isRunning) return;
    _isRunning = true;

    _pollTimer = Timer.periodic(const Duration(milliseconds: 200), (timer) {
      _pollForData(deviceId);
    });
  }

  Future<void> _pollForData(String deviceId) async {
    if (_serialNumber == null) return;

    try {
      final writeData = api.getUsbWriteDataWrapper(
        serialNumber: _serialNumber!,
      );

      if (writeData != null && writeData.isNotEmpty) {
        await UniversalBle.write(
          deviceId,
          bleServiceUuid,
          bleRxUuid,
          Uint8List.fromList(writeData),
        );
      }
    } catch (e) {
      // Ignore errors during polling
    }
  }

  /// Disconnect and clean up
  Future<void> disconnect() async {
    _isRunning = false;
    _pollTimer?.cancel();
    _pollTimer = null;

    if (_connectedDeviceId != null) {
      if (_serialNumber != null) {
        await api.closeUsbChannel(serialNumber: _serialNumber!);
      }
      try {
        await UniversalBle.disconnect(_connectedDeviceId!);
      } catch (_) {}
      _connectedDeviceId = null;
      _serialNumber = null;
    }
  }

  bool get isConnected => _connectedDeviceId != null && _isRunning;
}
