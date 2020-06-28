library thumbnail;

import 'dart:convert';

import 'package:afrotrends/features/data/serializers/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'thumbnail.g.dart';

abstract class Thumbnail implements Built<Thumbnail, ThumbnailBuilder> {
  @nullable
  @BuiltValueField(wireName: "24")
  String get i24;

  @nullable
  @BuiltValueField(wireName: "48")
  String get i48;

  @nullable
  @BuiltValueField(wireName: "96")
  String get i96;

  Thumbnail._();

  factory Thumbnail([updates(ThumbnailBuilder b)]) = _$Thumbnail;

  String toJson() {
    return json.encode(serializers.serializeWith(Thumbnail.serializer, this));
  }

  static Thumbnail fromJson(String jsonString) {
    return serializers.deserializeWith(Thumbnail.serializer, json.decode(jsonString));
  }

  static Serializer<Thumbnail> get serializer => _$thumbnailSerializer;
}
