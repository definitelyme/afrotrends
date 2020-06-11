// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  _AuthFailure call({String code, String message}) {
    return _AuthFailure(
      code: code,
      message: message,
    );
  }
}

// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

mixin _$AuthFailure {
  String get code;
  String get message;

  $AuthFailureCopyWith<AuthFailure> get copyWith;
}

abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
  $Res call({String code, String message});
}

class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;

  @override
  $Res call({
    Object code = freezed,
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed ? _value.code : code as String,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

abstract class _$AuthFailureCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$AuthFailureCopyWith(
          _AuthFailure value, $Res Function(_AuthFailure) then) =
      __$AuthFailureCopyWithImpl<$Res>;
  @override
  $Res call({String code, String message});
}

class __$AuthFailureCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$AuthFailureCopyWith<$Res> {
  __$AuthFailureCopyWithImpl(
      _AuthFailure _value, $Res Function(_AuthFailure) _then)
      : super(_value, (v) => _then(v as _AuthFailure));

  @override
  _AuthFailure get _value => super._value as _AuthFailure;

  @override
  $Res call({
    Object code = freezed,
    Object message = freezed,
  }) {
    return _then(_AuthFailure(
      code: code == freezed ? _value.code : code as String,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_AuthFailure with DiagnosticableTreeMixin implements _AuthFailure {
  const _$_AuthFailure({this.code, this.message});

  @override
  final String code;
  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure(code: $code, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthFailure'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthFailure &&
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
  _$AuthFailureCopyWith<_AuthFailure> get copyWith =>
      __$AuthFailureCopyWithImpl<_AuthFailure>(this, _$identity);
}

abstract class _AuthFailure implements AuthFailure {
  const factory _AuthFailure({String code, String message}) = _$_AuthFailure;

  @override
  String get code;
  @override
  String get message;
  @override
  _$AuthFailureCopyWith<_AuthFailure> get copyWith;
}
