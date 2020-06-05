import 'package:afrotrends/blogger/domain/entities/links.dart';
import 'package:afrotrends/blogger/domain/entities/model.dart';

class Media extends Model {
  final String id;
  final String slug;
  final String type;
  final String link;
  final String title;
  final String description;
  final String mediaType;
  final String sourceUrl;
  final Links links;

  Media({
    this.id,
    this.slug,
    this.type,
    this.link,
    this.title,
    this.description,
    this.mediaType,
    this.sourceUrl,
    this.links,
    String createdAt,
    String updatedAt,
  }) : super(id: id, createdAt: createdAt, updatedAt: updatedAt);

  @override
  List<Object> get props => [id, slug, type, link, title, description, mediaType, sourceUrl, links];
}
