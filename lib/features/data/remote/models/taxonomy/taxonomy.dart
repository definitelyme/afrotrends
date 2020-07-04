library taxonomy;

import 'dart:convert';

import 'package:afrotrends/features/data/serializers/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'taxonomy.g.dart';

abstract class Taxonomy implements Built<Taxonomy, TaxonomyBuilder> {
  @nullable
  @BuiltValueField(wireName: "term_id")
  int get termId;

  @nullable
  int get id;

  @nullable
  @BuiltValueField(wireName: "name")
  String get name;

  @nullable
  int get count;

  @nullable
  String get taxonomy;

  @nullable
  @BuiltValueField(wireName: "slug")
  String get slug;

  Taxonomy._();

  static void _initializeBuilder(TaxonomyBuilder builder) => builder
    ..id = 0
    ..termId = -1
    ..name = null
    ..slug = null;

  factory Taxonomy([updates(TaxonomyBuilder b)]) = _$Taxonomy;

  String toJson() {
    return json.encode(serializers.serializeWith(Taxonomy.serializer, this));
  }

  static Taxonomy fromMap(Map<String, dynamic> map) {
    return serializers.deserializeWith(Taxonomy.serializer, map);
  }

  static BuiltList<Taxonomy> fromDynamicList(List<dynamic> mapList) => deserializeListOf<Taxonomy>(mapList);

  static Serializer<Taxonomy> get serializer => _$taxonomySerializer;
}
