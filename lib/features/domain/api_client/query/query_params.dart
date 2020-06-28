library query_params;

import 'dart:convert';

import 'package:afrotrends/features/data/serializers/api_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'query_params.g.dart';

abstract class QueryParam implements Built<QueryParam, QueryParamBuilder> {
  int get perPage;
  int get nextPage;

  QueryParam._();

  factory QueryParam([updates(QueryParamBuilder b)]) = _$QueryParam;

  String toMap() => json.encode(clientSerializer.serializeWith(QueryParam.serializer, this));

  static QueryParam fromMap(Map<String, dynamic> map) => clientSerializer.deserializeWith(QueryParam.serializer, map);

  static BuiltList<QueryParam> fromDynamicList(List<dynamic> mapList) => deserializeListOf<QueryParam>(mapList);

  static Serializer<QueryParam> get serializer => _$queryParamSerializer;
}

// /posts
// /categories
//

//class PostType extends EnumClass {
//  static const PostType post = _$post;
//  const PostType._(String name) : super(name);
////  static BuiltList
//}
