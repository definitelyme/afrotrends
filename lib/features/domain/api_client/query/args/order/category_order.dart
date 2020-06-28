import 'package:afrotrends/features/domain/api_client/exports.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'category_order.g.dart';

class CategoryOrder extends EnumClass implements Order {
  static const CategoryOrder id = _$id;
  static const CategoryOrder slug = _$slug;
  static const CategoryOrder count = _$count;

  const CategoryOrder._(String name) : super(name);

  static BuiltSet<CategoryOrder> get values => _$values;

  static CategoryOrder valueOf(String name) => _$valueOf(name);
}
