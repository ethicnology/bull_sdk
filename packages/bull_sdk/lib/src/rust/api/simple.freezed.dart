// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ArkTransaction {

 String get txid; PlatformInt64 get sats;
/// Create a copy of ArkTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArkTransactionCopyWith<ArkTransaction> get copyWith => _$ArkTransactionCopyWithImpl<ArkTransaction>(this as ArkTransaction, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArkTransaction&&(identical(other.txid, txid) || other.txid == txid)&&(identical(other.sats, sats) || other.sats == sats));
}


@override
int get hashCode => Object.hash(runtimeType,txid,sats);

@override
String toString() {
  return 'ArkTransaction(txid: $txid, sats: $sats)';
}


}

/// @nodoc
abstract mixin class $ArkTransactionCopyWith<$Res>  {
  factory $ArkTransactionCopyWith(ArkTransaction value, $Res Function(ArkTransaction) _then) = _$ArkTransactionCopyWithImpl;
@useResult
$Res call({
 String txid, int sats
});




}
/// @nodoc
class _$ArkTransactionCopyWithImpl<$Res>
    implements $ArkTransactionCopyWith<$Res> {
  _$ArkTransactionCopyWithImpl(this._self, this._then);

  final ArkTransaction _self;
  final $Res Function(ArkTransaction) _then;

/// Create a copy of ArkTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? txid = null,Object? sats = null,}) {
  return _then(_self.copyWith(
txid: null == txid ? _self.txid : txid // ignore: cast_nullable_to_non_nullable
as String,sats: null == sats ? _self.sats : sats // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ArkTransaction].
extension ArkTransactionPatterns on ArkTransaction {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ArkTransaction_Boarding value)?  boarding,TResult Function( ArkTransaction_Commitment value)?  commitment,TResult Function( ArkTransaction_Redeem value)?  redeem,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ArkTransaction_Boarding() when boarding != null:
return boarding(_that);case ArkTransaction_Commitment() when commitment != null:
return commitment(_that);case ArkTransaction_Redeem() when redeem != null:
return redeem(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ArkTransaction_Boarding value)  boarding,required TResult Function( ArkTransaction_Commitment value)  commitment,required TResult Function( ArkTransaction_Redeem value)  redeem,}){
final _that = this;
switch (_that) {
case ArkTransaction_Boarding():
return boarding(_that);case ArkTransaction_Commitment():
return commitment(_that);case ArkTransaction_Redeem():
return redeem(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ArkTransaction_Boarding value)?  boarding,TResult? Function( ArkTransaction_Commitment value)?  commitment,TResult? Function( ArkTransaction_Redeem value)?  redeem,}){
final _that = this;
switch (_that) {
case ArkTransaction_Boarding() when boarding != null:
return boarding(_that);case ArkTransaction_Commitment() when commitment != null:
return commitment(_that);case ArkTransaction_Redeem() when redeem != null:
return redeem(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String txid,  PlatformInt64 sats,  PlatformInt64? confirmedAt)?  boarding,TResult Function( String txid,  PlatformInt64 sats,  PlatformInt64 createdAt)?  commitment,TResult Function( String txid,  PlatformInt64 sats,  bool isSettled,  PlatformInt64 createdAt)?  redeem,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ArkTransaction_Boarding() when boarding != null:
return boarding(_that.txid,_that.sats,_that.confirmedAt);case ArkTransaction_Commitment() when commitment != null:
return commitment(_that.txid,_that.sats,_that.createdAt);case ArkTransaction_Redeem() when redeem != null:
return redeem(_that.txid,_that.sats,_that.isSettled,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String txid,  PlatformInt64 sats,  PlatformInt64? confirmedAt)  boarding,required TResult Function( String txid,  PlatformInt64 sats,  PlatformInt64 createdAt)  commitment,required TResult Function( String txid,  PlatformInt64 sats,  bool isSettled,  PlatformInt64 createdAt)  redeem,}) {final _that = this;
switch (_that) {
case ArkTransaction_Boarding():
return boarding(_that.txid,_that.sats,_that.confirmedAt);case ArkTransaction_Commitment():
return commitment(_that.txid,_that.sats,_that.createdAt);case ArkTransaction_Redeem():
return redeem(_that.txid,_that.sats,_that.isSettled,_that.createdAt);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String txid,  PlatformInt64 sats,  PlatformInt64? confirmedAt)?  boarding,TResult? Function( String txid,  PlatformInt64 sats,  PlatformInt64 createdAt)?  commitment,TResult? Function( String txid,  PlatformInt64 sats,  bool isSettled,  PlatformInt64 createdAt)?  redeem,}) {final _that = this;
switch (_that) {
case ArkTransaction_Boarding() when boarding != null:
return boarding(_that.txid,_that.sats,_that.confirmedAt);case ArkTransaction_Commitment() when commitment != null:
return commitment(_that.txid,_that.sats,_that.createdAt);case ArkTransaction_Redeem() when redeem != null:
return redeem(_that.txid,_that.sats,_that.isSettled,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class ArkTransaction_Boarding extends ArkTransaction {
  const ArkTransaction_Boarding({required this.txid, required this.sats, this.confirmedAt}): super._();
  

@override final  String txid;
@override final  PlatformInt64 sats;
 final  PlatformInt64? confirmedAt;

/// Create a copy of ArkTransaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArkTransaction_BoardingCopyWith<ArkTransaction_Boarding> get copyWith => _$ArkTransaction_BoardingCopyWithImpl<ArkTransaction_Boarding>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArkTransaction_Boarding&&(identical(other.txid, txid) || other.txid == txid)&&(identical(other.sats, sats) || other.sats == sats)&&(identical(other.confirmedAt, confirmedAt) || other.confirmedAt == confirmedAt));
}


@override
int get hashCode => Object.hash(runtimeType,txid,sats,confirmedAt);

@override
String toString() {
  return 'ArkTransaction.boarding(txid: $txid, sats: $sats, confirmedAt: $confirmedAt)';
}


}

/// @nodoc
abstract mixin class $ArkTransaction_BoardingCopyWith<$Res> implements $ArkTransactionCopyWith<$Res> {
  factory $ArkTransaction_BoardingCopyWith(ArkTransaction_Boarding value, $Res Function(ArkTransaction_Boarding) _then) = _$ArkTransaction_BoardingCopyWithImpl;
@override @useResult
$Res call({
 String txid, PlatformInt64 sats, PlatformInt64? confirmedAt
});




}
/// @nodoc
class _$ArkTransaction_BoardingCopyWithImpl<$Res>
    implements $ArkTransaction_BoardingCopyWith<$Res> {
  _$ArkTransaction_BoardingCopyWithImpl(this._self, this._then);

  final ArkTransaction_Boarding _self;
  final $Res Function(ArkTransaction_Boarding) _then;

/// Create a copy of ArkTransaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? txid = null,Object? sats = null,Object? confirmedAt = freezed,}) {
  return _then(ArkTransaction_Boarding(
txid: null == txid ? _self.txid : txid // ignore: cast_nullable_to_non_nullable
as String,sats: null == sats ? _self.sats : sats // ignore: cast_nullable_to_non_nullable
as PlatformInt64,confirmedAt: freezed == confirmedAt ? _self.confirmedAt : confirmedAt // ignore: cast_nullable_to_non_nullable
as PlatformInt64?,
  ));
}


}

/// @nodoc


class ArkTransaction_Commitment extends ArkTransaction {
  const ArkTransaction_Commitment({required this.txid, required this.sats, required this.createdAt}): super._();
  

@override final  String txid;
@override final  PlatformInt64 sats;
 final  PlatformInt64 createdAt;

/// Create a copy of ArkTransaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArkTransaction_CommitmentCopyWith<ArkTransaction_Commitment> get copyWith => _$ArkTransaction_CommitmentCopyWithImpl<ArkTransaction_Commitment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArkTransaction_Commitment&&(identical(other.txid, txid) || other.txid == txid)&&(identical(other.sats, sats) || other.sats == sats)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,txid,sats,createdAt);

@override
String toString() {
  return 'ArkTransaction.commitment(txid: $txid, sats: $sats, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ArkTransaction_CommitmentCopyWith<$Res> implements $ArkTransactionCopyWith<$Res> {
  factory $ArkTransaction_CommitmentCopyWith(ArkTransaction_Commitment value, $Res Function(ArkTransaction_Commitment) _then) = _$ArkTransaction_CommitmentCopyWithImpl;
@override @useResult
$Res call({
 String txid, PlatformInt64 sats, PlatformInt64 createdAt
});




}
/// @nodoc
class _$ArkTransaction_CommitmentCopyWithImpl<$Res>
    implements $ArkTransaction_CommitmentCopyWith<$Res> {
  _$ArkTransaction_CommitmentCopyWithImpl(this._self, this._then);

  final ArkTransaction_Commitment _self;
  final $Res Function(ArkTransaction_Commitment) _then;

/// Create a copy of ArkTransaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? txid = null,Object? sats = null,Object? createdAt = null,}) {
  return _then(ArkTransaction_Commitment(
txid: null == txid ? _self.txid : txid // ignore: cast_nullable_to_non_nullable
as String,sats: null == sats ? _self.sats : sats // ignore: cast_nullable_to_non_nullable
as PlatformInt64,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as PlatformInt64,
  ));
}


}

/// @nodoc


class ArkTransaction_Redeem extends ArkTransaction {
  const ArkTransaction_Redeem({required this.txid, required this.sats, required this.isSettled, required this.createdAt}): super._();
  

@override final  String txid;
@override final  PlatformInt64 sats;
 final  bool isSettled;
 final  PlatformInt64 createdAt;

/// Create a copy of ArkTransaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArkTransaction_RedeemCopyWith<ArkTransaction_Redeem> get copyWith => _$ArkTransaction_RedeemCopyWithImpl<ArkTransaction_Redeem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArkTransaction_Redeem&&(identical(other.txid, txid) || other.txid == txid)&&(identical(other.sats, sats) || other.sats == sats)&&(identical(other.isSettled, isSettled) || other.isSettled == isSettled)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,txid,sats,isSettled,createdAt);

@override
String toString() {
  return 'ArkTransaction.redeem(txid: $txid, sats: $sats, isSettled: $isSettled, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ArkTransaction_RedeemCopyWith<$Res> implements $ArkTransactionCopyWith<$Res> {
  factory $ArkTransaction_RedeemCopyWith(ArkTransaction_Redeem value, $Res Function(ArkTransaction_Redeem) _then) = _$ArkTransaction_RedeemCopyWithImpl;
@override @useResult
$Res call({
 String txid, PlatformInt64 sats, bool isSettled, PlatformInt64 createdAt
});




}
/// @nodoc
class _$ArkTransaction_RedeemCopyWithImpl<$Res>
    implements $ArkTransaction_RedeemCopyWith<$Res> {
  _$ArkTransaction_RedeemCopyWithImpl(this._self, this._then);

  final ArkTransaction_Redeem _self;
  final $Res Function(ArkTransaction_Redeem) _then;

/// Create a copy of ArkTransaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? txid = null,Object? sats = null,Object? isSettled = null,Object? createdAt = null,}) {
  return _then(ArkTransaction_Redeem(
txid: null == txid ? _self.txid : txid // ignore: cast_nullable_to_non_nullable
as String,sats: null == sats ? _self.sats : sats // ignore: cast_nullable_to_non_nullable
as PlatformInt64,isSettled: null == isSettled ? _self.isSettled : isSettled // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as PlatformInt64,
  ));
}


}

/// @nodoc
mixin _$TxFee {

 Object get field0;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxFee&&const DeepCollectionEquality().equals(other.field0, field0));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(field0));

@override
String toString() {
  return 'TxFee(field0: $field0)';
}


}

/// @nodoc
class $TxFeeCopyWith<$Res>  {
$TxFeeCopyWith(TxFee _, $Res Function(TxFee) __);
}


/// Adds pattern-matching-related methods to [TxFee].
extension TxFeePatterns on TxFee {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TxFee_Absolute value)?  absolute,TResult Function( TxFee_Relative value)?  relative,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TxFee_Absolute() when absolute != null:
return absolute(_that);case TxFee_Relative() when relative != null:
return relative(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TxFee_Absolute value)  absolute,required TResult Function( TxFee_Relative value)  relative,}){
final _that = this;
switch (_that) {
case TxFee_Absolute():
return absolute(_that);case TxFee_Relative():
return relative(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TxFee_Absolute value)?  absolute,TResult? Function( TxFee_Relative value)?  relative,}){
final _that = this;
switch (_that) {
case TxFee_Absolute() when absolute != null:
return absolute(_that);case TxFee_Relative() when relative != null:
return relative(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( BigInt field0)?  absolute,TResult Function( double field0)?  relative,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TxFee_Absolute() when absolute != null:
return absolute(_that.field0);case TxFee_Relative() when relative != null:
return relative(_that.field0);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( BigInt field0)  absolute,required TResult Function( double field0)  relative,}) {final _that = this;
switch (_that) {
case TxFee_Absolute():
return absolute(_that.field0);case TxFee_Relative():
return relative(_that.field0);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( BigInt field0)?  absolute,TResult? Function( double field0)?  relative,}) {final _that = this;
switch (_that) {
case TxFee_Absolute() when absolute != null:
return absolute(_that.field0);case TxFee_Relative() when relative != null:
return relative(_that.field0);case _:
  return null;

}
}

}

/// @nodoc


class TxFee_Absolute extends TxFee {
  const TxFee_Absolute(this.field0): super._();
  

@override final  BigInt field0;

/// Create a copy of TxFee
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TxFee_AbsoluteCopyWith<TxFee_Absolute> get copyWith => _$TxFee_AbsoluteCopyWithImpl<TxFee_Absolute>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxFee_Absolute&&(identical(other.field0, field0) || other.field0 == field0));
}


@override
int get hashCode => Object.hash(runtimeType,field0);

@override
String toString() {
  return 'TxFee.absolute(field0: $field0)';
}


}

/// @nodoc
abstract mixin class $TxFee_AbsoluteCopyWith<$Res> implements $TxFeeCopyWith<$Res> {
  factory $TxFee_AbsoluteCopyWith(TxFee_Absolute value, $Res Function(TxFee_Absolute) _then) = _$TxFee_AbsoluteCopyWithImpl;
@useResult
$Res call({
 BigInt field0
});




}
/// @nodoc
class _$TxFee_AbsoluteCopyWithImpl<$Res>
    implements $TxFee_AbsoluteCopyWith<$Res> {
  _$TxFee_AbsoluteCopyWithImpl(this._self, this._then);

  final TxFee_Absolute _self;
  final $Res Function(TxFee_Absolute) _then;

/// Create a copy of TxFee
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? field0 = null,}) {
  return _then(TxFee_Absolute(
null == field0 ? _self.field0 : field0 // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}


}

/// @nodoc


class TxFee_Relative extends TxFee {
  const TxFee_Relative(this.field0): super._();
  

@override final  double field0;

/// Create a copy of TxFee
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TxFee_RelativeCopyWith<TxFee_Relative> get copyWith => _$TxFee_RelativeCopyWithImpl<TxFee_Relative>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxFee_Relative&&(identical(other.field0, field0) || other.field0 == field0));
}


@override
int get hashCode => Object.hash(runtimeType,field0);

@override
String toString() {
  return 'TxFee.relative(field0: $field0)';
}


}

/// @nodoc
abstract mixin class $TxFee_RelativeCopyWith<$Res> implements $TxFeeCopyWith<$Res> {
  factory $TxFee_RelativeCopyWith(TxFee_Relative value, $Res Function(TxFee_Relative) _then) = _$TxFee_RelativeCopyWithImpl;
@useResult
$Res call({
 double field0
});




}
/// @nodoc
class _$TxFee_RelativeCopyWithImpl<$Res>
    implements $TxFee_RelativeCopyWith<$Res> {
  _$TxFee_RelativeCopyWithImpl(this._self, this._then);

  final TxFee_Relative _self;
  final $Res Function(TxFee_Relative) _then;

/// Create a copy of TxFee
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? field0 = null,}) {
  return _then(TxFee_Relative(
null == field0 ? _self.field0 : field0 // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
