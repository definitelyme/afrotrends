import 'package:afrotrends/features/data/remote/models/model_failures.dart';

class AuthorResultError extends ModelFailure {
  final String message;

  AuthorResultError(this.message);
}
