import 'package:afrotrends/blogger/domain/entities/links.dart';
import 'package:afrotrends/blogger/domain/entities/media.dart';
import 'package:afrotrends/blogger/domain/entities/model.dart';

class PostCategory extends Model {
  final String id;
  final String slug;
  final String name;
  final String description;
  final String href;
  final Media media;
  final int count;
  final Links links;

  PostCategory({
    this.id,
    this.slug,
    this.name,
    this.description,
    this.href,
    this.media,
    this.count,
    this.links,
  }) : super(id: id);

  @override
  List<Object> get props => [id, slug, name, description, href, media, count, links];
}
