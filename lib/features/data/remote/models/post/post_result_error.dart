import 'package:afrotrends/features/data/remote/models/model_failures.dart';

class PostResultError extends ModelFailure {
  final String message;

  PostResultError(this.message);
}
