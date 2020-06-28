library content;

import 'dart:convert';

import 'package:afrotrends/features/data/serializers/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'content.g.dart';

abstract class Content implements Built<Content, ContentBuilder> {
  // fields go here
  @nullable
  String get rendered;

  Content._();

  factory Content([updates(ContentBuilder b)]) = _$Content;

  String toJson() {
    return json.encode(serializers.serializeWith(Content.serializer, this));
  }

  static Content fromJson(String jsonString) {
    return serializers.deserializeWith(Content.serializer, json.decode(jsonString));
  }

  static Serializer<Content> get serializer => _$contentSerializer;
}
