import 'package:afrotrends/features/domain/api_client/exports.dart';
import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ApiClient)
class DioClient implements ApiClient<Response> {
  static final BaseOptions _options = new BaseOptions(
    baseUrl: ApiClient.BASE_URL,
    connectTimeout: 7000,
    receiveTimeout: 2000,
    contentType: "application/json",
  );
  final Dio _dio;

  DioClient(Dio baseClient)
      : assert(baseClient != null),
        _dio = baseClient
          ..options = _options
          ..interceptors.add(
            DioCacheManager(
              CacheConfig(baseUrl: ApiClient.BASE_URL),
            ).interceptor,
          );

  @override
  Future<Response> get<T>(
    String path, {
    QueryBuilder query,
    Object options,
  }) =>
      _dio.get(path,
          queryParameters: query.build(),
          options: (options as Options) ??
              buildCacheOptions(
                Duration(days: 7),
                maxStale: Duration(days: 10),
                forceRefresh: true,
              ));

  @override
  Future<Response> post<T>(
    String path, {
    dynamic data,
    QueryBuilder query,
  }) =>
      _dio.post(path, queryParameters: query.build(), data: data);

  @override
  Future<Response> put<T>(
    String path, {
    dynamic data,
    QueryBuilder query,
  }) =>
      _dio.put(path, queryParameters: query.build(), data: data);

  @override
  Future<Response> patch<T>(
    String path, {
    dynamic data,
    QueryBuilder query,
  }) =>
      _dio.patch(path, queryParameters: query.build(), data: data);

  @override
  Future<Response> delete<T>(
    String path, {
    dynamic data,
    QueryBuilder query,
  }) =>
      _dio.delete(path, queryParameters: query.build(), data: data);
}
