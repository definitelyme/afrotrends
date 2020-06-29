import 'package:afrotrends/features/domain/api_client/client.dart';
import 'package:afrotrends/features/domain/api_client/query/query_builder.dart';
import 'package:http/http.dart' as http;

class HttpClient implements ApiClient<http.Response> {
  final http.Client client;

  HttpClient(this.client);

  @override
  Future<http.Response> get(String path, {QueryBuilder query}) {
    throw UnimplementedError();
  }

  @override
  Future<http.Response> post(String path, {dynamic data, QueryBuilder query}) {
    throw UnimplementedError();
  }

  @override
  Future<http.Response> put(String path, {dynamic data, QueryBuilder query}) {
    throw UnimplementedError();
  }

  @override
  Future<http.Response> patch(String path, {dynamic data, QueryBuilder query}) {
    throw UnimplementedError();
  }

  @override
  Future<http.Response> delete(String path, {dynamic data, QueryBuilder query}) {
    throw UnimplementedError();
  }
}
