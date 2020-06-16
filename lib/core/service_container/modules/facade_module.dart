import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:data_connection_checker/data_connection_checker.dart';

@module
abstract class FacadeModule {
  BaseOptions _baseOptions = new BaseOptions(
    baseUrl: "https://afrotrends.com/wp-json/wp/v2/",
    connectTimeout: 7000,
    receiveTimeout: 6000,
  );
  @lazySingleton
  http.Client get client => http.Client();
  @lazySingleton
  Dio get dio => Dio();
  @lazySingleton
  DataConnectionChecker get connectionChecker => DataConnectionChecker();
}