import 'package:afrotrends/features/domain/api_client/exports.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dio_client_exception.freezed.dart';

@freezed
@immutable
abstract class DioClientException implements ApiClientException<DioError>, _$DioClientException {
  const DioClientException._();

  const factory DioClientException({
    @nullable DioErrorType errorType,
    @nullable Response response,
    @nullable API_ERROR_CODE code,
    @required String message,
  }) = _DioClientException;

  factory DioClientException.unStableInternet({
    API_ERROR_CODE code,
    DioErrorType type = DioErrorType.CONNECT_TIMEOUT,
    String message = "Unstable internet connection! Retrying..",
  }) =>
      DioClientException(
        code: code,
        errorType: type,
        message: message,
      );

  factory DioClientException.noNextPage({
    API_ERROR_CODE code = API_ERROR_CODE.NO_MORE_POSTS,
    DioErrorType type = DioErrorType.CONNECT_TIMEOUT,
    String message,
  }) =>
      DioClientException(
        code: code,
        errorType: DioErrorType.RESPONSE,
        message: "That's all for now!",
      );
}
