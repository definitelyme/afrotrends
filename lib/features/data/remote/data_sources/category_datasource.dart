import 'package:afrotrends/features/data/client/client_serializer.dart';
import 'package:afrotrends/features/data/client/dio/exports_dio_client.dart';
import 'package:afrotrends/features/data/remote/models/taxonomy/exports_taxonomy.dart';
import 'package:afrotrends/features/domain/api_client/exports.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retry/retry.dart';

@LazySingleton()
class CategoryDataSource {
  final ApiClient<Response> _client;
  final RetryOptions _r;

  CategoryDataSource(this._client, this._r);

  Future<Taxonomies> fetchActiveCategories(QueryBuilder query) async {
    try {
      final response = await _client.get("/categories", query: query);
//      throw DioError(type: DioErrorType.CONNECT_TIMEOUT, request: response.request);
      return Taxonomies.fromMap(formatListResponse(response.headers.map, response.data));
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
