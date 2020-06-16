import 'package:afrotrends/blogger/domain/entities/model.dart';

class User extends Model {
  final String id;
  final String name;
  final String link;
  final String slug;
  final String avatarUrl;

  User({this.id, this.name, this.link, this.slug, this.avatarUrl}) : super(id: id);

  @override
  List<Object> get props => [id, name, link, slug, avatarUrl, createdAt, updatedAt];
}
