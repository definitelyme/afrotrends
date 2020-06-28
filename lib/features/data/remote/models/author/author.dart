library author;

import 'dart:convert';

import 'package:afrotrends/features/data/serializers/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'author.g.dart';

abstract class Author implements Built<Author, AuthorBuilder> {
  @nullable
  @BuiltValueField(wireName: "ID")
  int get id;
  @nullable
  @BuiltValueField(wireName: "display_name")
  String get displayName;
  @nullable
  @BuiltValueField(wireName: "user_email")
  String get email;
  @nullable
  @BuiltValueField(wireName: "user_nicename")
  String get slug;
  @nullable
  @BuiltValueField(wireName: "user_avatar")
  String get avatar;

  Author._();

  static void _initializeBuilder(AuthorBuilder builder) => builder
    ..id = 0
    ..displayName = "Afrotrends"
    ..email = ""
    ..slug = "afrotrends"
    ..avatar = "https://secure.gravatar.com/avatar/38c595bf7886ecfdbfdc525ca095c474?s=96&d=mm&r=g";

  factory Author([updates(AuthorBuilder b)]) = _$Author;

  String toJson() => json.encode(serializers.serializeWith(Author.serializer, this));

  static Author fromMap(Map<String, dynamic> map) => serializers.deserializeWith(Author.serializer, map);

  static BuiltList<Author> fromDynamicList(List<dynamic> mapList) => deserializeListOf<Author>(mapList);

  static Serializer<Author> get serializer => _$authorSerializer;
}
