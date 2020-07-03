import 'package:afrotrends/features/domain/api_client/exports.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'post_order.g.dart';

class PostOrder extends EnumClass implements Order {
  static const PostOrder id = _$id;
  static const PostOrder slug = _$slug;
  static const PostOrder title = _$title;
  static const PostOrder author = _$author;
  static const PostOrder relevance = _$relevance;
  static const PostOrder date = _$date;

  const PostOrder._(String name) : super(name);

  static BuiltSet<PostOrder> get values => _$values;

  static PostOrder valueOf(String name) => _$valueOf(name);
}
