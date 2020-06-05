import 'package:afrotrends/blogger/core/failures/failure.dart';
import 'package:afrotrends/blogger/core/failures/response_status.dart';
import 'package:afrotrends/blogger/domain/entities/category.dart';
import 'package:afrotrends/blogger/domain/facades/facade.dart';
import 'package:afrotrends/blogger/infrastructure/wp/props/wp_props.dart';
import 'package:afrotrends/blogger/infrastructure/wp/wp_category.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

@lazySingleton
class CategoryFacade extends Facade<PostCategory> {
  static const String CATEGORY_API_END_POINT = "https://afrotrends.com/wp-json/wp/v2/categories";
  static const Map<String, String> CATEGORY_API_HEADERS = {"Content-Type": "application/json"};
  final Dio _httpClient;

  CategoryFacade({@required Dio client})
      : _httpClient = client,
        assert(client != null);

  @override
  Future<Either<Failure, List<PostCategory>>> all(RequestArg requestArg, {String optional = ""}) async {
    String url = "$CATEGORY_API_END_POINT${concatParams(requestArg)}${optional}per_page=${requestArg.perPage.toString()}";
    return listFromURL(url);
  }

  @override
  Future<Either<Failure, PostCategory>> get(String id) async {
    String url = "$CATEGORY_API_END_POINT/$id";
    return fromURL(url);
  }

  @override
  Future<Either<Failure, List<PostCategory>>> listFromURL(String url) async {
    try {
      final response = await _httpClient.get(url);
      if (response.statusCode == 200) return right(WpCategories.fromMap(response.data).wpCategories);
      return left(status(response));
    } on DioError catch (e) {
      return left(ResponseStatus.unknown(message: e.message));
    }
  }

  @override
  Future<Either<Failure, PostCategory>> fromURL(String url) async {
//    Future.sync(() => null);
    try {
      final response = await _httpClient.get(url);
      if (response.statusCode == 200) return right(WpCategory.fromMap(response.data));
      return left(status(response));
    } on DioError catch (e) {
      return left(ResponseStatus.unknown(message: e.message));
    }
  }

  @override
  Future<List<dynamic>> mappedListFromLink(LinksModel links) async {
    // Get url string from links array
    String url = links.termLinks.firstWhere((el) => el.taxonomy == "category").href;
    // Make GET request to get categories
    var categories = (await listFromURL(url)).getOrElse(() => []);
    // Return Mapped Categories list
    return WpCategories(wpCategories: categories).toMap();
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
