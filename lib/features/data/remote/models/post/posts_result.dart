library posts_result;

import 'dart:convert';

import 'package:afrotrends/features/data/remote/models/extras/exports_extra.dart';
import 'package:afrotrends/features/data/remote/models/post/exports.dart';
import 'package:afrotrends/features/data/serializers/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'posts_result.g.dart';

abstract class PostsResult implements Built<PostsResult, PostsResultBuilder> {
  @nullable
  @BuiltValueField(wireName: "page_info")
  PageInfo get pageInfo;
  @nullable
  BuiltList<Post> get items;

  PostsResult._();

  factory PostsResult([updates(PostsResultBuilder b)]) = _$PostsResult;

  String toMap() => json.encode(serializers.serializeWith(PostsResult.serializer, this));

  static PostsResult fromMap(Map<String, dynamic> map) => serializers.deserializeWith(PostsResult.serializer, map);

  static Serializer<PostsResult> get serializer => _$postsResultSerializer;
}
