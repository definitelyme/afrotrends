import 'package:afrotrends/blogger/core/api_client.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

class DioClient implements ApiClient {
  final Dio _dio;

  DioClient({@required Dio dio}) : _dio = dio;

  @override
  Future<Response> get() {
//    return _dio.get(path);
  }
}
