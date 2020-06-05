// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'response_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ResponseStatusTearOff {
  const _$ResponseStatusTearOff();

  _ResponseStatus call({int code, String message}) {
    return _ResponseStatus(
      code: code,
      message: message,
    );
  }
}

// ignore: unused_element
const $ResponseStatus = _$ResponseStatusTearOff();

mixin _$ResponseStatus {
  int get code;
  String get message;

  $ResponseStatusCopyWith<ResponseStatus> get copyWith;
}

abstract class $ResponseStatusCopyWith<$Res> {
  factory $ResponseStatusCopyWith(
          ResponseStatus value, $Res Function(ResponseStatus) then) =
      _$ResponseStatusCopyWithImpl<$Res>;
  $Res call({int code, String message});
}

class _$ResponseStatusCopyWithImpl<$Res>
    implements $ResponseStatusCopyWith<$Res> {
  _$ResponseStatusCopyWithImpl(this._value, this._then);

  final ResponseStatus _value;
  // ignore: unused_field
  final $Res Function(ResponseStatus) _then;

  @override
  $Res call({
    Object code = freezed,
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed ? _value.code : code as int,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

abstract class _$ResponseStatusCopyWith<$Res>
    implements $ResponseStatusCopyWith<$Res> {
  factory _$ResponseStatusCopyWith(
          _ResponseStatus value, $Res Function(_ResponseStatus) then) =
      __$ResponseStatusCopyWithImpl<$Res>;
  @override
  $Res call({int code, String message});
}

class __$ResponseStatusCopyWithImpl<$Res>
    extends _$ResponseStatusCopyWithImpl<$Res>
    implements _$ResponseStatusCopyWith<$Res> {
  __$ResponseStatusCopyWithImpl(
      _ResponseStatus _value, $Res Function(_ResponseStatus) _then)
      : super(_value, (v) => _then(v as _ResponseStatus));

  @override
  _ResponseStatus get _value => super._value as _ResponseStatus;

  @override
  $Res call({
    Object code = freezed,
    Object message = freezed,
  }) {
    return _then(_ResponseStatus(
      code: code == freezed ? _value.code : code as int,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_ResponseStatus
    with DiagnosticableTreeMixin
    implements _ResponseStatus {
  const _$_ResponseStatus({this.code, this.message});

  @override
  final int code;
  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResponseStatus(code: $code, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResponseStatus'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResponseStatus &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message);

  @override
  _$ResponseStatusCopyWith<_ResponseStatus> get copyWith =>
      __$ResponseStatusCopyWithImpl<_ResponseStatus>(this, _$identity);
}

abstract class _ResponseStatus implements ResponseStatus {
  const factory _ResponseStatus({int code, String message}) = _$_ResponseStatus;

  @override
  int get code;
  @override
  String get message;
  @override
  _$ResponseStatusCopyWith<_ResponseStatus> get copyWith;
}
