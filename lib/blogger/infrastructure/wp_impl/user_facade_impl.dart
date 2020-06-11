import 'package:afrotrends/blogger/core/failures/failure.dart';
import 'package:afrotrends/blogger/core/failures/response_status.dart';
import 'package:afrotrends/blogger/domain/entities/user.dart';
import 'package:afrotrends/blogger/domain/facades/facade.dart';
import 'package:afrotrends/blogger/infrastructure/wp/props/links-model.dart';
import 'package:afrotrends/blogger/infrastructure/wp/wp_user.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

@lazySingleton
class UserFacade extends Facade<User> {
  static const String USER_API_END_POINT = "https://afrotrends.com/wp-json/wp/v2/users";
  static const Map<String, String> USER_API_HEADERS = {"Content-Type": "application/json"};
  final Dio _httpClient;

  UserFacade({@required Dio client})
      : _httpClient = client,
        assert(client != null);

  @override
  Future<Either<Failure, List<User>>> all(RequestArg requestArg, {String optional = ""}) async {
    String url = "$USER_API_END_POINT${concatParams(requestArg)}per_page=${requestArg.perPage.toString()}";
    return listFromURL(url);
  }

  @override
  Future<Either<Failure, User>> get(String id) async {
    String url = "$USER_API_END_POINT/$id";
    return fromURL(url);
  }

  @override
  Future<Either<Failure, User>> fromURL(String url) async {
    try {
      final response = await _httpClient.get(url);
      if (response.statusCode == 200) return right(WpUser.fromMap(response.data));
      return left(status(response));
    } on DioError catch (e) {
      return left(ResponseStatus.unknown(message: e.message));
    }
  }

  @override
  Future<Either<Failure, List<User>>> listFromURL(String url) async {
    try {
      final response = await _httpClient.get(url);
//    if (response.statusCode == 200) return right(WpUser.fromMap(response.body).wpUsers);
      return left(status(response));
    } on DioError catch (e) {
      return left(ResponseStatus.unknown(message: e.message));
    }
  }

  @override
  Future<Map<String, dynamic>> mapSingleFromLink(LinksModel linksModel) async {
    String url = linksModel.authorsLinks[0].href;
    WpUser author = (await fromURL(url)).getOrElse(() => null);
    return author?.toMap();
  }

  Failure status(Response response) {
    switch (response.statusCode) {
      case 201:
        return ResponseStatus.e201(code: response.statusCode, message: response.statusMessage);
      case 400:
        return ResponseStatus.e400(code: response.statusCode, message: response.statusMessage);
      case 401:
        return ResponseStatus.e401(code: response.statusCode, message: response.statusMessage);
      case 403:
        return ResponseStatus.e403(code: response.statusCode, message: response.statusMessage);
      case 404:
        return ResponseStatus.e404(code: response.statusCode, message: response.statusMessage);
      case 405:
        return ResponseStatus.e405(code: response.statusCode, message: response.statusMessage);
      case 406:
        return ResponseStatus.e406(code: response.statusCode, message: response.statusMessage);
      case 500:
        return ResponseStatus.e500(code: response.statusCode, message: response.statusMessage);
      case 501:
        return ResponseStatus.e501(code: response.statusCode, message: response.statusMessage);
      default:
        return ResponseStatus.unknown(code: response.statusCode, message: response.statusMessage);
    }
  }
}
