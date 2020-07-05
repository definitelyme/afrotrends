library taxonomies;

import 'package:afrotrends/features/data/remote/models/extras/exports_extra.dart';
import 'package:afrotrends/features/data/remote/models/taxonomy/exports_taxonomy.dart';
import 'package:afrotrends/features/data/serializers/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'taxonomies.g.dart';

abstract class Taxonomies implements Built<Taxonomies, TaxonomiesBuilder> {
  @nullable
  @BuiltValueField(wireName: "page_info")
  PageInfo get pageInfo;

  @nullable
  BuiltList<Taxonomy> get items;

  Taxonomies._();

  static void _initializeBuilder(TaxonomiesBuilder builder) => builder
    ..pageInfo = PageInfo((b) => b
      ..total = "0"
      ..totalPages = "0").toBuilder()
    ..items = ListBuilder<Taxonomy>();

  factory Taxonomies([updates(TaxonomiesBuilder b)]) = _$Taxonomies;

  String toMap() => serializers.serializeWith(Taxonomies.serializer, this);

  static Taxonomies fromMap(Map<String, dynamic> map) => serializers.deserializeWith(Taxonomies.serializer, map);

  static BuiltList<Taxonomies> fromDynamicList(List<dynamic> mapList) => deserializeListOf<Taxonomies>(mapList);

  static Serializer<Taxonomies> get serializer => _$taxonomiesSerializer;
}
