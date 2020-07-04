import 'package:afrotrends/features/domain/api_client/exports.dart';

abstract class ApiClient<U> {
  static const String BASE_URL = "https://afrotrends.com/wp-json/wp/v2";

  Future<U> get<T>(String path, {QueryBuilder query, Object options});

  Future<U> post<T>(String path, {dynamic data, QueryBuilder query});

  Future<U> put<T>(String path, {dynamic data, QueryBuilder query});

  Future<U> patch<T>(String path, {dynamic data, QueryBuilder query});

  Future<U> delete<T>(String path, {dynamic data, QueryBuilder query});
}
