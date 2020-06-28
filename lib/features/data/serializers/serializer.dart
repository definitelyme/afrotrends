library serializer;

import 'package:afrotrends/features/data/remote/models/author/exports.dart';
import 'package:afrotrends/features/data/remote/models/content/content.dart';
import 'package:afrotrends/features/data/remote/models/media/featured_image.dart';
import 'package:afrotrends/features/data/remote/models/post/exports.dart';
import 'package:afrotrends/features/data/remote/models/post/post_custom_fields.dart';
import 'package:afrotrends/features/data/remote/models/taxonomy/taxonomy.dart';
import 'package:afrotrends/features/data/remote/models/thumbnail/thumbnail.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'serializer.g.dart';

@SerializersFor(const [
  Post,
  Author,
  Content,
  Taxonomy,
  Thumbnail,
  FeaturedImage,
  PostAdvCustomField,
])
final Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

T deserialize<T>(dynamic value) => serializers.deserializeWith<T>(serializers.serializerForType(T), value);

BuiltList<T> deserializeListOf<T>(dynamic value) => BuiltList.from(value.map((value) => deserialize<T>(value)).toList(growable: false));
