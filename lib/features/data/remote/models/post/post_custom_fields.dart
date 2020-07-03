library post_custom_fields;

import 'dart:convert';

import 'package:afrotrends/features/data/remote/models/author/exports.dart';
import 'package:afrotrends/features/data/remote/models/media/featured_image.dart';
import 'package:afrotrends/features/data/remote/models/taxonomy/taxonomy.dart';
import 'package:afrotrends/features/data/serializers/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_custom_fields.g.dart';

abstract class PostAdvCustomField implements Built<PostAdvCustomField, PostAdvCustomFieldBuilder> {
  @nullable
  @BuiltValueField(wireName: "_categoriees")
  BuiltList<Taxonomy> get categories;
  @nullable
  @BuiltValueField(wireName: "_tags")
  BuiltList<Taxonomy> get tags;
  @nullable
  @BuiltValueField(wireName: "user")
  Author get user;
  @nullable
  @BuiltValueField(wireName: "_featured_image")
  BuiltList<FeaturedImage> get featuredImage;

  PostAdvCustomField._();

  static void _initializeBuilder(PostAdvCustomFieldBuilder builder) => builder
    ..categories = ListBuilder<Taxonomy>()
    ..tags = ListBuilder<Taxonomy>()
    ..user = AuthorBuilder()
    ..featuredImage = ListBuilder<FeaturedImage>();

  factory PostAdvCustomField([updates(PostAdvCustomFieldBuilder b)]) = _$PostAdvCustomField;

  String toJson() => json.encode(serializers.serializeWith(PostAdvCustomField.serializer, this));

  static PostAdvCustomField fromMap(Map<String, dynamic> map) {
    return serializers.deserializeWith(PostAdvCustomField.serializer, map);
  }

  static BuiltList<PostAdvCustomField> fromDynamicList(List<dynamic> mapList) => deserializeListOf<PostAdvCustomField>(mapList);

  static Serializer<PostAdvCustomField> get serializer => _$postAdvCustomFieldSerializer;
}
