import 'package:afrotrends/blogger/core/failures/failure.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_status.freezed.dart';

@freezed
@immutable
abstract class ResponseStatus extends Failure with _$ResponseStatus {
  const factory ResponseStatus({
    int code,
    String message,
  }) = _ResponseStatus;

  factory ResponseStatus.e201({int code = 201, String message = "Created"}) => ResponseStatus(code: code, message: message);

  factory ResponseStatus.e400({int code = 400, String message = "Bad Request"}) => ResponseStatus(code: code, message: message);

  factory ResponseStatus.e401({int code = 401, String message = "Unauthorized/Unauthenticated."}) => ResponseStatus(code: code, message: message);

  factory ResponseStatus.e403({
    int code = 403,
    String message = "Forbidden - You are unauthorized to access this resource.",
  }) =>
      ResponseStatus(code: code, message: message);

  factory ResponseStatus.e404({int code = 404, String message = "Resource Not Found"}) => ResponseStatus(code: code, message: message);

  factory ResponseStatus.e405({int code = 405, String message = "Method Not Allowed"}) => ResponseStatus(code: code, message: message);

  factory ResponseStatus.e406({int code = 406, String message = "Request Type Not Acceptable"}) => ResponseStatus(code: code, message: message);

  factory ResponseStatus.e500({int code = 500, String message = "Internal Server Error"}) => ResponseStatus(code: code, message: message);

  factory ResponseStatus.e501({int code = 501, String message = "Not Implemented"}) => ResponseStatus(code: code, message: message);

  factory ResponseStatus.unknown({int code = 0, String message = "Error Unknown. Please contact support!"}) => ResponseStatus(code: code, message: message);
}
