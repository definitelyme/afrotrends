library posts;

import 'package:afrotrends/features/data/remote/models/extras/exports_extra.dart';
import 'package:afrotrends/features/data/remote/models/post/exports.dart';
import 'package:afrotrends/features/data/serializers/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'posts.g.dart';

abstract class Posts implements Built<Posts, PostsBuilder> {
  @nullable
  @BuiltValueField(wireName: "page_info")
  PageInfo get pageInfo;

  @nullable
  BuiltList<Post> get items;

  Posts._();

  static void _initializeBuilder(PostsBuilder builder) => builder
    ..pageInfo = PageInfo((b) => b
      ..total = "0"
      ..totalPages = "0").toBuilder()
    ..items = ListBuilder<Post>();

  factory Posts([updates(PostsBuilder b)]) = _$Posts;

  Map<String, dynamic> toMap() => serializers.serializeWith(Posts.serializer, this);

  static Posts fromMap(Map<String, dynamic> map) => serializers.deserializeWith(Posts.serializer, map);

  static BuiltList<Posts> fromDynamicList(List<dynamic> mapList) => deserializeListOf<Posts>(mapList);

  static Serializer<Posts> get serializer => _$postsSerializer;
}
