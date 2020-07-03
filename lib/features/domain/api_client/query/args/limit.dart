import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'limit.g.dart';

class Limit extends EnumClass {
  static const Limit before = _$before;
  static const Limit after = _$after;

  const Limit._(String name) : super(name);

  static BuiltSet<Limit> get values => _$values;

  static Limit valueOf(String name) => _$valueOf(name);
}
