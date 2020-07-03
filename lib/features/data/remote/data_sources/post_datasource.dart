import 'dart:async';
import 'dart:io';

import 'package:afrotrends/features/data/client/dio/dio_client_exception.dart';
import 'package:afrotrends/features/data/remote/models/post/exports.dart';
import 'package:afrotrends/features/domain/api_client/exports.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retry/retry.dart';

typedef ApiClientCaller<T> = Future<T> Function(String path, {QueryBuilder query});

@LazySingleton()
class PostDataSource {
  final ApiClient<Response> _client;
  final RetryOptions _r;

  PostDataSource(ApiClient<Response> client, RetryOptions retryOptions)
      : _client = client,
        _r = retryOptions;

  Future<Posts> fetchLatestPosts({QueryBuilder query}) async {
    try {
      final response = await _client.get("/posts", query: query);
      throw DioError(type: DioErrorType.CONNECT_TIMEOUT, request: response.request);
//      return Posts.fromMap(formatListResponse(response.headers.map, response.data));
    } on DioError catch (e) {
      _checkHasNextPage(e);
//      return handlesTimeoutExceptions<Posts>(_client.get, "/posts", args: query);
      rethrow;
    }
  }

  Future<Posts> fetchOlderPosts({QueryBuilder query}) async {
    //
  }

  void _checkHasNextPage(DioError e) {
    if (e?.response?.data != null)
      switch (e.response.data['code']) {
        case "rest_post_invalid_page_number":
          throw DioClientException.noNextPage();
        default:
          throw e;
      }
  }

  Future<T> handlesTimeoutExceptions<T>(ApiClientCaller call, String uri, {QueryBuilder args}) {
    return _r.retry<T>(
      () async => await call(uri, query: args),
      retryIf: (e) =>
          (e is DioError &&
              (e.type == DioErrorType.CONNECT_TIMEOUT ||
                  e.type == DioErrorType.SEND_TIMEOUT ||
                  e.type == DioErrorType.RECEIVE_TIMEOUT ||
                  e.type == DioErrorType.DEFAULT)) ||
          e is SocketException ||
          e is TimeoutException,
    );
  }
}
