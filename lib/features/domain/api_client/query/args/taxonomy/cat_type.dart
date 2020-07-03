import 'package:afrotrends/features/domain/api_client/exports.dart';

class TCategory implements TaxonomyType {
  final int _id;

  TCategory(int id)
      : assert(id != null && id != 0),
        _id = id;

  @override
  int get id => _id;

  @override
  String get key => "categories";
}
