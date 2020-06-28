import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'sort.g.dart';

class SortBy extends EnumClass {
  static const SortBy asc = _$asc;
  static const SortBy desc = _$desc;

  static String get key => "order";

  const SortBy._(String name) : super(name);

  static BuiltSet<SortBy> get values => _$values;

  static SortBy valueOf(String name) => _$valueOf(name);
}
