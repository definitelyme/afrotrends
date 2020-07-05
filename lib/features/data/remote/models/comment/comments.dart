library comments;

import 'package:afrotrends/features/data/remote/models/comment/exports_comment.dart';
import 'package:afrotrends/features/data/remote/models/extras/exports_extra.dart';
import 'package:afrotrends/features/data/serializers/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'comments.g.dart';

abstract class Comments implements Built<Comments, CommentsBuilder> {
  @nullable
  @BuiltValueField(wireName: "page_info")
  PageInfo get pageInfo;

  @nullable
  BuiltList<Comment> get items;

  Comments._();

  static void _initializeBuilder(CommentsBuilder builder) => builder
    ..pageInfo = PageInfo((b) => b
      ..total = "0"
      ..totalPages = "0").toBuilder()
    ..items = ListBuilder<Comment>();

  factory Comments([updates(CommentsBuilder b)]) = _$Comments;

  String toMap() => serializers.serializeWith(Comments.serializer, this);

  static Comments fromMap(Map<String, dynamic> map) => serializers.deserializeWith(Comments.serializer, map);

  static BuiltList<Comments> fromDynamicList(List<dynamic> mapList) => deserializeListOf<Comments>(mapList);

  static Serializer<Comments> get serializer => _$commentsSerializer;
}
