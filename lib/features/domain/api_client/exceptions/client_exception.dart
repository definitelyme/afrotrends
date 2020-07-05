import 'package:afrotrends/features/domain/entities/failure.dart';

abstract class ApiClientException<U> implements Failure {
  API_ERROR_CODE get code;

  dynamic get errorType;

  String get message;
}

enum API_ERROR_CODE { NO_MORE_ITEMS }
