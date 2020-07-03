library page_info;

import 'dart:convert';

import 'package:afrotrends/features/data/serializers/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'page_info.g.dart';

abstract class PageInfo implements Built<PageInfo, PageInfoBuilder> {
  @nullable
  String get total;
  @nullable
  @BuiltValueField(wireName: "total_pages")
  String get totalPages;

  PageInfo._();

  factory PageInfo([updates(PageInfoBuilder b)]) = _$PageInfo;

  String toMap() => json.encode(serializers.serializeWith(PageInfo.serializer, this));

  static PageInfo fromMap(Map<String, dynamic> map) => serializers.deserializeWith(PageInfo.serializer, map);

  static Serializer<PageInfo> get serializer => _$pageInfoSerializer;
}
