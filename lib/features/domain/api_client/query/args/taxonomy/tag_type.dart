import 'package:afrotrends/features/domain/api_client/exports.dart';

class TTag implements TaxonomyType {
  final int _id;

  TTag(int id)
      : assert(id != null && id != 0),
        _id = id;

  @override
  int get id => _id;

  @override
  String get key => "tags";
}
