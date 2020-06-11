import 'package:afrotrends/blogger/core/failures/failure.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
@immutable
abstract class AuthFailure extends Failure with _$AuthFailure {
  const factory AuthFailure({
    String code,
    String message,
  }) = _AuthFailure;

  factory AuthFailure.cancelledAction() => AuthFailure(message: "Login cancelled!");

  factory AuthFailure.invalidCredentials({String message}) => AuthFailure(
        code: "ERROR_INVALID_CREDENTIALS",
        message: message ?? "Invalid Credentials!",
      );

  factory AuthFailure.userAccountDisabled({String message}) => AuthFailure(
        code: "ERROR_USER_DISABLED",
        message: message ?? "These account has been disabled.\nPlease contact Support.",
      );
  factory AuthFailure.operationNotAllowed({String message}) => AuthFailure(
        code: "ERROR_OPERATION_NOT_ALLOWED",
        message: message ?? "Service accounts not enabled.\nPlease contact Support.",
      );

  factory AuthFailure.expiredOrInvalidToken({String message}) => AuthFailure(
        code: "ERROR_INVALID_TOKEN",
        message: message ?? "Malformed or expired Action Code! Please sign in again.",
      );
}
