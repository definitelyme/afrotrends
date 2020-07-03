import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DataModule {
  BaseOptions _options = new BaseOptions(
    baseUrl: "https://afrotrends.com/wp-json/wp/v2",
    connectTimeout: 7000,
    receiveTimeout: 6000,
    contentType: "application/json",
  );

  @lazySingleton
  Dio get dio => Dio(_options);
}
