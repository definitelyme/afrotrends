library post;

import 'dart:convert';

import 'package:afrotrends/features/data/remote/models/content/content.dart';
import 'package:afrotrends/features/data/remote/models/post/post_custom_fields.dart';
import 'package:afrotrends/features/data/serializers/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post.g.dart';

abstract class Post implements Built<Post, PostBuilder> {
  // fields go here
  @nullable
  int get id;

  @nullable
  String get slug;

  @nullable
  Content get title;

  @nullable
  Content get content;

  @nullable
  Content get excerpt;

  @nullable
  String get status;

  @nullable
  @BuiltValueField(wireName: "link")
  String get url;

  @nullable
  @BuiltValueField(wireName: "comment_status")
  String get commentStatus;

  @nullable
  @BuiltValueField(wireName: "acf")
  PostAdvCustomField get customField;

  @nullable
  @BuiltValueField(wireName: "date")
  String get createdAt;

  @nullable
  @BuiltValueField(wireName: "modified")
  String get updatedAt;

  Post._();

  factory Post([updates(PostBuilder b)]) = _$Post;

  String toMap() => json.encode(serializers.serializeWith(Post.serializer, this));

  static Post fromMap(Map<String, dynamic> map) => serializers.deserializeWith(Post.serializer, map);

  static BuiltList<Post> fromDynamicList(List<dynamic> json) => deserializeListOf<Post>(json);

  static Serializer<Post> get serializer => _$postSerializer;
}
