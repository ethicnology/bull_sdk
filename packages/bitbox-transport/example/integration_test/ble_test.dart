import 'package:bitbox_transport/bitbox_transport.dart';
import 'package:bull_sdk/bitbox.dart' as bitbox;
import 'package:bull_sdk/bull_sdk.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

/// Integration test for BitBox02 Nova BLE connection.
/// Requires: Android device with BitBox02 Nova nearby and Bluetooth enabled.
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('BLE Connector', () {
    setUpAll(() async {
      await BullSdk.init();
    });

    testWidgets('scan for BLE devices', (tester) async {
      print('Scanning for BitBox02 Nova devices via BLE...');
      final connector = BleConnector();
      final devices = await connector.scanDevices(
        timeout: const Duration(seconds: 10),
      );

      expect(devices, isA<List<BitBox02BleDevice>>());
      print('Found ${devices.length} BLE device(s)');
      for (final device in devices) {
        print('  - ${device.name} (${device.deviceId})');
      }
    });

    testWidgets('connect and get root fingerprint via BLE', (tester) async {
      final connector = BleConnector();

      // Scan
      print('Scanning for BitBox02 Nova...');
      final devices = await connector.scanDevices(
        timeout: const Duration(seconds: 10),
      );

      if (devices.isEmpty) {
        markTestSkipped('No BitBox02 Nova BLE device found');
        return;
      }

      final device = devices.first;
      print('Connecting to ${device.name} (${device.deviceId})...');

      // Use deviceId as serial number for Rust queue identification
      final serialNumber = device.deviceId;

      final connected = await connector.connect(
        deviceId: device.deviceId,
        serialNumber: serialNumber,
      );
      expect(connected, isTrue);
      print('Connected!');

      // Read product info
      final productInfo = await connector.readProductInfo();
      print('Product info: $productInfo');

      // Start pairing via Rust API (same as USB — protocol is identical)
      print('Starting pairing...');
      final pairingCode = await bitbox.startPairing(
        serialNumber: serialNumber,
      );
      print('Pairing code: $pairingCode');

      if (pairingCode != null) {
        print('Please confirm pairing on BitBox02 Nova...');
        final confirmed = await bitbox.confirmPairing(
          serialNumber: serialNumber,
        );
        expect(confirmed, isTrue);
        print('Paired!');

        // Get root fingerprint
        final fingerprint = await bitbox.getRootFingerprint(
          serialNumber: serialNumber,
        );
        expect(fingerprint, isNotEmpty);
        print('Root fingerprint: $fingerprint');

        // Get device info
        final info = await bitbox.getDeviceInfo(serialNumber: serialNumber);
        print('Device: ${info.name} v${info.version} (initialized: ${info.initialized})');
      }

      // Cleanup
      await connector.disconnect();
      print('Disconnected');
    });
  });
}
