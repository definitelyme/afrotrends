import 'package:afrotrends/features/domain/api_client/exports.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ApiClient)
class DioClient implements ApiClient<Response> {
  static final BaseOptions _options = new BaseOptions(
    baseUrl: ApiClient.BASE_URL,
    connectTimeout: 7000,
    receiveTimeout: 6000,
    contentType: "application/json",
  );
  final Dio _dio;

  DioClient(Dio baseClient)
      : assert(baseClient != null),
        _dio = baseClient..options = _options;

  @override
  Future<Response> get(String path, {QueryBuilder query}) => _dio.get(path, queryParameters: query.build());

  @override
  Future<Response> post(String path, {dynamic data, QueryBuilder query}) => _dio.post(path, queryParameters: query.build(), data: data);

  @override
  Future<Response> put(String path, {dynamic data, QueryBuilder query}) => _dio.put(path, queryParameters: query.build(), data: data);

  @override
  Future<Response> patch(String path, {dynamic data, QueryBuilder query}) => _dio.patch(path, queryParameters: query.build(), data: data);

  @override
  Future<Response> delete(String path, {dynamic data, QueryBuilder query}) => _dio.delete(path, queryParameters: query.build(), data: data);
}
