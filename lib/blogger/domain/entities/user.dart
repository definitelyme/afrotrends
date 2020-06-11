import 'package:afrotrends/blogger/domain/entities/model.dart';

class User extends Model {
  final String id;
  final String name;
  final String link;
  final String slug;
  final String avatarUrl;
  final String fcmToken;

  User({this.id, this.name, this.link, this.slug, this.avatarUrl, this.fcmToken}) : super(id: id);

  @override
  List<Object> get props => [id, name, link, slug, avatarUrl, fcmToken, createdAt, updatedAt];
}
