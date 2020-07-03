import 'package:afrotrends/features/domain/api_client/client.dart';
import 'package:afrotrends/features/domain/api_client/query/query_builder.dart';
import 'package:http/http.dart' as http;

class HttpClient implements ApiClient<http.Response> {
  final http.Client client;

  HttpClient(this.client);

  @override
  Future<http.Response> get<T>(String path, {QueryBuilder query}) async {
    throw UnimplementedError();
  }

  @override
  Future<http.Response> post<T>(String path, {dynamic data, QueryBuilder query}) async {
    throw UnimplementedError();
  }

  @override
  Future<http.Response> put<T>(String path, {dynamic data, QueryBuilder query}) async {
    throw UnimplementedError();
  }

  @override
  Future<http.Response> patch<T>(String path, {dynamic data, QueryBuilder query}) async {
    throw UnimplementedError();
  }

  @override
  Future<http.Response> delete<T>(String path, {dynamic data, QueryBuilder query}) async {
    throw UnimplementedError();
  }
}
