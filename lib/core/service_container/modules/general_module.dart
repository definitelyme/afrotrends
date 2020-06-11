import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class GeneralModule {
  BaseOptions _baseOptions = new BaseOptions(
    baseUrl: "https://afrotrends.com/wp-json/wp/v2/",
    connectTimeout: 7000,
    receiveTimeout: 6000,
  );

  @lazySingleton
  Dio get dio => Dio();

  @lazySingleton
  DataConnectionChecker get connectionChecker => DataConnectionChecker();
}
