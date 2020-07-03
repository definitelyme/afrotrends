library api_serializer;

import 'package:afrotrends/features/domain/api_client/query/query_params.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'api_serializer.g.dart';

@SerializersFor(const [
  QueryParam,
])
final Serializers clientSerializer = (_$clientSerializer.toBuilder()..addPlugin(StandardJsonPlugin())).build();

T deserialize<T>(dynamic value) => clientSerializer.deserializeWith<T>(clientSerializer.serializerForType(T), value);

BuiltList<T> deserializeListOf<T>(dynamic value) => BuiltList.from(value.map((value) => deserialize<T>(value)).toList(growable: false));
