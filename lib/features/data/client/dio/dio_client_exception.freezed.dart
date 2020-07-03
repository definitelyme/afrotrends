// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'dio_client_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DioClientExceptionTearOff {
  const _$DioClientExceptionTearOff();

  _DioClientException call(
      {@nullable DioErrorType errorType,
      @nullable Response<dynamic> response,
      @nullable API_ERROR_CODE code,
      @required String message}) {
    return _DioClientException(
      errorType: errorType,
      response: response,
      code: code,
      message: message,
    );
  }
}

// ignore: unused_element
const $DioClientException = _$DioClientExceptionTearOff();

mixin _$DioClientException {
  @nullable
  DioErrorType get errorType;
  @nullable
  Response<dynamic> get response;
  @nullable
  API_ERROR_CODE get code;
  String get message;

  $DioClientExceptionCopyWith<DioClientException> get copyWith;
}

abstract class $DioClientExceptionCopyWith<$Res> {
  factory $DioClientExceptionCopyWith(
          DioClientException value, $Res Function(DioClientException) then) =
      _$DioClientExceptionCopyWithImpl<$Res>;
  $Res call(
      {@nullable DioErrorType errorType,
      @nullable Response<dynamic> response,
      @nullable API_ERROR_CODE code,
      String message});
}

class _$DioClientExceptionCopyWithImpl<$Res>
    implements $DioClientExceptionCopyWith<$Res> {
  _$DioClientExceptionCopyWithImpl(this._value, this._then);

  final DioClientException _value;
  // ignore: unused_field
  final $Res Function(DioClientException) _then;

  @override
  $Res call({
    Object errorType = freezed,
    Object response = freezed,
    Object code = freezed,
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      errorType:
          errorType == freezed ? _value.errorType : errorType as DioErrorType,
      response:
          response == freezed ? _value.response : response as Response<dynamic>,
      code: code == freezed ? _value.code : code as API_ERROR_CODE,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

abstract class _$DioClientExceptionCopyWith<$Res>
    implements $DioClientExceptionCopyWith<$Res> {
  factory _$DioClientExceptionCopyWith(
          _DioClientException value, $Res Function(_DioClientException) then) =
      __$DioClientExceptionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable DioErrorType errorType,
      @nullable Response<dynamic> response,
      @nullable API_ERROR_CODE code,
      String message});
}

class __$DioClientExceptionCopyWithImpl<$Res>
    extends _$DioClientExceptionCopyWithImpl<$Res>
    implements _$DioClientExceptionCopyWith<$Res> {
  __$DioClientExceptionCopyWithImpl(
      _DioClientException _value, $Res Function(_DioClientException) _then)
      : super(_value, (v) => _then(v as _DioClientException));

  @override
  _DioClientException get _value => super._value as _DioClientException;

  @override
  $Res call({
    Object errorType = freezed,
    Object response = freezed,
    Object code = freezed,
    Object message = freezed,
  }) {
    return _then(_DioClientException(
      errorType:
          errorType == freezed ? _value.errorType : errorType as DioErrorType,
      response:
          response == freezed ? _value.response : response as Response<dynamic>,
      code: code == freezed ? _value.code : code as API_ERROR_CODE,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_DioClientException extends _DioClientException
    with DiagnosticableTreeMixin {
  const _$_DioClientException(
      {@nullable this.errorType,
      @nullable this.response,
      @nullable this.code,
      @required this.message})
      : assert(message != null),
        super._();

  @override
  @nullable
  final DioErrorType errorType;
  @override
  @nullable
  final Response<dynamic> response;
  @override
  @nullable
  final API_ERROR_CODE code;
  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DioClientException(errorType: $errorType, response: $response, code: $code, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DioClientException'))
      ..add(DiagnosticsProperty('errorType', errorType))
      ..add(DiagnosticsProperty('response', response))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DioClientException &&
            (identical(other.errorType, errorType) ||
                const DeepCollectionEquality()
                    .equals(other.errorType, errorType)) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(errorType) ^
      const DeepCollectionEquality().hash(response) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message);

  @override
  _$DioClientExceptionCopyWith<_DioClientException> get copyWith =>
      __$DioClientExceptionCopyWithImpl<_DioClientException>(this, _$identity);
}

abstract class _DioClientException extends DioClientException {
  const _DioClientException._() : super._();
  const factory _DioClientException(
      {@nullable DioErrorType errorType,
      @nullable Response<dynamic> response,
      @nullable API_ERROR_CODE code,
      @required String message}) = _$_DioClientException;

  @override
  @nullable
  DioErrorType get errorType;
  @override
  @nullable
  Response<dynamic> get response;
  @override
  @nullable
  API_ERROR_CODE get code;
  @override
  String get message;
  @override
  _$DioClientExceptionCopyWith<_DioClientException> get copyWith;
}
