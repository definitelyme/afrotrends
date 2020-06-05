import 'dart:convert';

import 'package:afrotrends/blogger/domain/entities/media.dart';
import 'package:afrotrends/blogger/infrastructure/wp/props/wp_props.dart';

class WpMedia extends Media {
  final String id;
  final String slug;
  final String type;
  final String link;
  final String title;
  final String description;
  final String mediaType;
  final String sourceUrl;
  final LinksModel links;

  WpMedia({
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

  factory WpMedia.fromJson(String str) => WpMedia.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WpMedia.fromMap(Map<String, dynamic> json) {
    return WpMedia(
      id: json["id"].toString(),
      slug: json["slug"],
      type: json["type"],
      link: json["link"],
      title: json["title"] is Map ? Content.fromMap(json["title"]).rendered : json["title"],
      description: json["description"] is Map ? Content.fromMap(json["description"]).rendered : json["description"],
      mediaType: json["media_type"],
      sourceUrl: json["source_url"],
      links: LinksModel.fromMap(json["_links"]),
    );
  }

  Map<String, dynamic> toMap() => {
        "id": id,
        "slug": slug,
        "type": type,
        "link": link,
        "title": title,
        "description": description,
        "media_type": mediaType,
        "source_url": sourceUrl,
        "_links": links?.toMap(),
      };
}
