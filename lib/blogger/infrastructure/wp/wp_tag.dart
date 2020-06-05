import 'dart:convert';

import 'package:afrotrends/blogger/infrastructure/wp/props/wp_props.dart';

class WpTag {
  final int id;
  final int count;
  final String description;
  final String link;
  final String name;
  final String slug;
  final String taxonomy;
  final List<Meta> meta;
  final LinksModel links;

  WpTag({
    this.id,
    this.count,
    this.description,
    this.link,
    this.name,
    this.slug,
    this.taxonomy,
    this.meta,
    this.links,
  });

  factory WpTag.fromJson(String str) => WpTag.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WpTag.fromMap(Map<String, dynamic> json) => WpTag(
        id: json["id"],
        count: json["count"],
        description: json["description"],
        link: json["link"],
        name: json["name"],
        slug: json["slug"],
        taxonomy: json["taxonomy"],
        meta: List<Meta>.from(json["meta"].map((x) => x)),
        links: LinksModel.fromMap(json["_links"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "count": count,
        "description": description,
        "link": link,
        "name": name,
        "slug": slug,
        "taxonomy": taxonomy,
        "meta": List<Meta>.from(meta.map((x) => x)),
        "_links": links.toMap(),
      };
}
