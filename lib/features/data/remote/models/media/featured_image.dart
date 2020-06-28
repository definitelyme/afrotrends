library featured_image;

import 'dart:convert';

import 'package:afrotrends/features/data/serializers/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'featured_image.g.dart';

abstract class FeaturedImage implements Built<FeaturedImage, FeaturedImageBuilder> {
  @nullable
  @BuiltValueField(wireName: "ID")
  int get id;
  @nullable
  @BuiltValueField(wireName: "post_title")
  String get rawName;
  @nullable
  @BuiltValueField(wireName: "guid")
  String get sourceUrl;
  @nullable
  @BuiltValueField(wireName: "post_mime_type")
  String get mimeType;

  FeaturedImage._();

  factory FeaturedImage([updates(FeaturedImageBuilder b)]) = _$FeaturedImage;

  String toJson() {
    return json.encode(serializers.serializeWith(FeaturedImage.serializer, this));
  }

  static FeaturedImage fromMap(Map<String, dynamic> map) {
    return serializers.deserializeWith(FeaturedImage.serializer, map);
  }

  static BuiltList<FeaturedImage> fromDynamicList(List<dynamic> mapList) => deserializeListOf<FeaturedImage>(mapList);

  static Serializer<FeaturedImage> get serializer => _$featuredImageSerializer;
}
