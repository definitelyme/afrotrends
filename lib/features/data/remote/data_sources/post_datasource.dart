import 'dart:async';

import 'package:afrotrends/features/data/client/client_serializer.dart';
import 'package:afrotrends/features/data/client/dio/dio_client_exception.dart';
import 'package:afrotrends/features/data/remote/models/post/exports.dart';
import 'package:afrotrends/features/domain/api_client/exports.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retry/retry.dart';

@LazySingleton()
class PostDataSource {
  final ApiClient<Response> _client;
  final RetryOptions _r;

  PostDataSource(this._client, this._r);

  Future<Posts> fetchLatestPosts({QueryBuilder query}) async {
    try {
      final response = await _client.get("/posts", query: query);
      return Posts.fromMap(formatListResponse(response.headers.map, response.data));
    } on DioError catch (e) {
      _checkHasNextPage(e);
      rethrow;
    }
  }

  Future<Post> fetchSingleton(String id, {QueryBuilder query}) async {
    try {
      final response = await _client.get("/posts/$id", query: query);
      return Post.fromMap(response.data);
    } on DioError catch (e) {
      rethrow;
    }
  }

  Future<Posts> fetchOlderPosts({QueryBuilder query}) async {
    try {
      final response = await _client.get("/posts", query: query);
      return Posts.fromMap(formatListResponse(response.headers.map, response.data));
    } on DioError catch (e) {
      _checkHasNextPage(e);
      rethrow;
    }
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
}
