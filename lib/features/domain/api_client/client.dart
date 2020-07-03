import 'package:meta/meta.dart';

@immutable
abstract class ApiClient<R> {
  static const String BASE_URL = "https://afrotrends.com/wp-json/wp/v2";

  Future<R> all();

  Future<R> get(String path);
}
