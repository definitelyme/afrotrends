import 'package:afrotrends/features/domain/api_client/exports.dart';

abstract class ApiClient<R> {
  static const String BASE_URL = "https://afrotrends.com/wp-json/wp/v2";

  Future<R> get(String path, {QueryBuilder query});

  Future<R> post(String path, {dynamic data, QueryBuilder query});

  Future<R> put(String path, {dynamic data, QueryBuilder query});

  Future<R> patch(String path, {dynamic data, QueryBuilder query});

  Future<R> delete(String path, {dynamic data, QueryBuilder query});
}
