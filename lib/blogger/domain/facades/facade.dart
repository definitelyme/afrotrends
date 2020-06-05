import 'package:afrotrends/blogger/core/failures/failure.dart';
import 'package:afrotrends/blogger/infrastructure/wp/props/links-model.dart';
import 'package:dartz/dartz.dart';

abstract class Facade<B> {
  Future<Either<Failure, List<B>>> all(RequestArg requestArg, {String optional = ""}) {
    return null;
  }

  Future<Either<Failure, Unit>> create() {
    return null;
  }

  Future<Either<Failure, B>> get(String id) {
    return null;
  }

  Future<Either<Failure, B>> update(String id) {
    return null;
  }

  Future<Either<Failure, Unit>> delete(String id) {
    return null;
  }

  Future<Either<Failure, List<B>>> listFromURL(String url) {
    return null;
  }

  Future<Either<Failure, B>> fromURL(String url) {
    return null;
  }

  Future<List<dynamic>> mappedListFromLink(LinksModel links) {
    return null;
  }

  Future<Map<String, dynamic>> mapSingleFromLink(LinksModel links) {
    return null;
  }
}

class RequestArg {
  final int perPage;
  final int page;
  final Map<REQUEST_ARG_TYPE, String> params;

  RequestArg({this.perPage = 15, this.page = 1, this.params = const {}});
}

const requestArgMap = {
  REQUEST_ARG_TYPE.POST: "post",
  REQUEST_ARG_TYPE.CATEGORY: "categories",
  REQUEST_ARG_TYPE.TAG: "tags",
  REQUEST_ARG_TYPE.AUTHOR: "author",
};

String getRequestArgValue(REQUEST_ARG_TYPE key) => requestArgMap.entries.firstWhere((elem) => elem.key == key).value;

String concatParams(RequestArg arg) => arg.params.entries.fold("?", (oldValue, map) => "$oldValue${getRequestArgValue(map.key)}=${map.value}&");

enum REQUEST_ARG_TYPE { POST, CATEGORY, TAG, AUTHOR }
