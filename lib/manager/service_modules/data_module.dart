import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
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
