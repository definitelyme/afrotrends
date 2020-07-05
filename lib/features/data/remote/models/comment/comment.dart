library comment;

import 'package:afrotrends/features/data/remote/models/content/content.dart';
import 'package:afrotrends/features/data/remote/models/thumbnail/thumbnail.dart';
import 'package:afrotrends/features/data/serializers/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'comment.g.dart';

abstract class Comment implements Built<Comment, CommentBuilder> {
  @nullable
  int get id;

  @nullable
  @BuiltValueField(wireName: "post")
  int get postId;

  @nullable
  @BuiltValueField(wireName: "author_name")
  String get authorName;

  @nullable
  @BuiltValueField(wireName: "date")
  String get createdAt;

  @nullable
  Content get content;

  @nullable
  String get link;

  @nullable
  @BuiltValueField(wireName: "author_avatar_urls")
  Thumbnail get thumbnail;

  Comment._();

  factory Comment([updates(CommentBuilder b)]) = _$Comment;

  String toMap() => serializers.serializeWith(Comment.serializer, this);

  static Comment fromMap(Map<String, dynamic> map) => serializers.deserializeWith(Comment.serializer, map);

  static BuiltList<Comment> fromDynamicList(List<dynamic> mapList) => deserializeListOf<Comment>(mapList);

  static Serializer<Comment> get serializer => _$commentSerializer;
}
