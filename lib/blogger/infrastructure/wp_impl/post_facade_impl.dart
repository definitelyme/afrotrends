import 'dart:convert';

import 'package:afrotrends/blogger/core/failures/failure.dart';
import 'package:afrotrends/blogger/core/failures/response_status.dart';
import 'package:afrotrends/blogger/domain/entities/post.dart';
import 'package:afrotrends/blogger/domain/facades/facade.dart';
import 'package:afrotrends/blogger/infrastructure/wp/props/links-model.dart';
import 'package:afrotrends/blogger/infrastructure/wp/wp_post.dart';
import 'package:afrotrends/blogger/infrastructure/wp_impl/category_facade_impl.dart';
import 'package:afrotrends/blogger/infrastructure/wp_impl/media_facade_impl.dart';
import 'package:afrotrends/blogger/infrastructure/wp_impl/user_facade_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PostFacade extends Facade<Post> {
  static const String POST_API_END_POINT = "https://afrotrends.com/wp-json/wp/v2/posts";
  static const Map<String, String> POST_API_HEADERS = {"Content-Type": "application/json"};
  final Dio _httpClient;
  final CategoryFacade _categoryFacade;
  final UserFacade _userFacade;
  final MediaFacade _mediaFacade;

  PostFacade({
    @required Dio client,
    @required CategoryFacade categoryFacade,
    @required UserFacade userFacade,
    @required MediaFacade mediaFacade,
  })  : _httpClient = client,
        _categoryFacade = categoryFacade,
        _userFacade = userFacade,
        _mediaFacade = mediaFacade,
        assert(client != null);

  @override
  Future<Either<Failure, List<Post>>> all(RequestArg requestArg, {String optional = ""}) async {
    String url = "$POST_API_END_POINT${concatParams(requestArg)}${optional}per_page=${requestArg.perPage}&page=${requestArg.page}";
    return listFromURL(url);
  }

  @override
  Future<Either<Failure, Post>> get(String id) async {
    String url = "$POST_API_END_POINT/$id";
    return fromURL(url);
  }

  @override
  Future<Either<Failure, List<Post>>> listFromURL(String url) async {
    try {
      final response = await _httpClient.get(url);
      if (response.statusCode == 200) {
        var parsedList = response.data;
  
        await Future.forEach(parsedList, (item) async {
          item["categories"] = await _categoryFacade.mappedListFromLink(LinksModel.fromMap(item['_links']));
        });
  
        await Future.forEach(parsedList, (item) async {
          item["author"] = await _userFacade.mapSingleFromLink(LinksModel.fromMap(item["_links"]));
        });
  
        await Future.forEach(parsedList, (item) async {
          item["featured_media"] = await _mediaFacade.mapSingleFromLink(LinksModel.fromMap(item["_links"]));
          item["posts_count"] = response.headers.value('X-WP-Total');
          item["posts_pages_count"] = response.headers.value('X-WP-TotalPages');
        });
        
        return right(WpPosts.fromMap(parsedList).wpPosts);
      }
      return left(status(response));
    } on DioError catch (e) {
      return left(ResponseStatus.unknown(message: e.message));
    }
  }

  @override
  Future<Either<Failure, Post>> fromURL(String url) async {
//    Future.sync(() => null);
    try {
      final response = await _httpClient.get(url);
      if (response.statusCode == 200) return right(WpPost.fromMap(response.data));
      return left(status(response));
    } on DioError catch (e) {
      return left(ResponseStatus.unknown(message: e.message));
    }
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
