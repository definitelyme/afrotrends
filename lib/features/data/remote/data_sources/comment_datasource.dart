import 'dart:async';

import 'package:afrotrends/features/data/client/client_serializer.dart';
import 'package:afrotrends/features/data/remote/models/comment/exports_comment.dart';
import 'package:afrotrends/features/domain/api_client/exports.dart';
import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class CommentDataSource {
  final ApiClient<Response> _client;

  const CommentDataSource(this._client);

  Future<Comments> fetchCommentsForPost(int id) async {
    try {
      final response = await _client.get("/comments",
          query: QueryBuilder(taxonomy: TPost(id), perPage: 30),
          options: buildCacheOptions(
            Duration(days: 7),
            maxStale: Duration(days: 10),
            forceRefresh: true,
          ));
      return Comments.fromMap(formatListResponse(response.headers.map, response.data));
    } on DioError catch (e) {
      rethrow;
    }
  }
}
