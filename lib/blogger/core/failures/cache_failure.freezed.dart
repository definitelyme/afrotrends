// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'cache_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CacheFailureTearOff {
  const _$CacheFailureTearOff();

  _CacheFailure call({String message}) {
    return _CacheFailure(
      message: message,
    );
  }
}

// ignore: unused_element
const $CacheFailure = _$CacheFailureTearOff();

mixin _$CacheFailure {
  String get message;

  $CacheFailureCopyWith<CacheFailure> get copyWith;
}

abstract class $CacheFailureCopyWith<$Res> {
  factory $CacheFailureCopyWith(
          CacheFailure value, $Res Function(CacheFailure) then) =
      _$CacheFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$CacheFailureCopyWithImpl<$Res> implements $CacheFailureCopyWith<$Res> {
  _$CacheFailureCopyWithImpl(this._value, this._then);

  final CacheFailure _value;
  // ignore: unused_field
  final $Res Function(CacheFailure) _then;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

abstract class _$CacheFailureCopyWith<$Res>
    implements $CacheFailureCopyWith<$Res> {
  factory _$CacheFailureCopyWith(
          _CacheFailure value, $Res Function(_CacheFailure) then) =
      __$CacheFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

class __$CacheFailureCopyWithImpl<$Res> extends _$CacheFailureCopyWithImpl<$Res>
    implements _$CacheFailureCopyWith<$Res> {
  __$CacheFailureCopyWithImpl(
      _CacheFailure _value, $Res Function(_CacheFailure) _then)
      : super(_value, (v) => _then(v as _CacheFailure));

  @override
  _CacheFailure get _value => super._value as _CacheFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_CacheFailure(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_CacheFailure with DiagnosticableTreeMixin implements _CacheFailure {
  const _$_CacheFailure({this.message});

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CacheFailure(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CacheFailure'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CacheFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$CacheFailureCopyWith<_CacheFailure> get copyWith =>
      __$CacheFailureCopyWithImpl<_CacheFailure>(this, _$identity);
}

abstract class _CacheFailure implements CacheFailure {
  const factory _CacheFailure({String message}) = _$_CacheFailure;

  @override
  String get message;
  @override
  _$CacheFailureCopyWith<_CacheFailure> get copyWith;
}
