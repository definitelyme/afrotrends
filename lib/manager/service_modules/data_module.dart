import 'package:afrotrends/features/domain/api_client/client.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:injectable/injectable.dart';
import 'package:retry/retry.dart';

@module
abstract class DataModule {
  @lazySingleton
  RetryOptions get retryOptions => RetryOptions(maxAttempts: 10500, maxDelay: Duration(seconds: 2));

  @lazySingleton
  DataConnectionChecker get connectionChecker => DataConnectionChecker();

  @lazySingleton
  Dio get dio => Dio();
}

class DioInstance {
  static final BaseOptions _options = new BaseOptions(
    baseUrl: ApiClient.BASE_URL,
    contentType: "application/json",
  );

  static Dio instance() {
    Dio dio = Dio(_options);
    dio.options.connectTimeout = 4000;
    dio.options.receiveTimeout = 3000;
    dio.interceptors.add(
      DioCacheManager(
        CacheConfig(baseUrl: ApiClient.BASE_URL),
      ).interceptor,
    );

    return dio;
  }
}
