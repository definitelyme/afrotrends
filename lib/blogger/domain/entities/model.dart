import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

// ignore: must_be_immutable
abstract class Model extends Equatable {
  static const ROOT_URL = "https://afrotrends.com/wp-json/wp/v2";
  final dynamic id;
  final String createdAt;
  final String updatedAt;

  Model({@required this.id, this.createdAt, this.updatedAt});

  @override
  bool get stringify => true;
}
