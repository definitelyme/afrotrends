// To parse this JSON data, do
//
//     final Embed = EmbedFromJson(jsonString);

import 'dart:convert';

import 'package:afrotrends/blogger/infrastructure/wp/props/wp_props.dart';

class WpEmbed {
  final int id;
  final DateTime date;
  final DateTime dateGmt;
  final Guid guid;
  final DateTime modified;
  final DateTime modifiedGmt;
  final String slug;
  final String status;
  final String type;
  final String link;
  final Guid title;
  final Content content;
  final String template;
  final LinksModel links;

  WpEmbed({
    this.id,
    this.date,
    this.dateGmt,
    this.guid,
    this.modified,
    this.modifiedGmt,
    this.slug,
    this.status,
    this.type,
    this.link,
    this.title,
    this.content,
    this.template,
    this.links,
  });

  factory WpEmbed.fromJson(String str) => WpEmbed.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WpEmbed.fromMap(Map<String, dynamic> json) => WpEmbed(
        id: json["id"],
        date: DateTime.parse(json["date"]),
        dateGmt: DateTime.parse(json["date_gmt"]),
        guid: Guid.fromMap(json["guid"]),
        modified: DateTime.parse(json["modified"]),
        modifiedGmt: DateTime.parse(json["modified_gmt"]),
        slug: json["slug"],
        status: json["status"],
        type: json["type"],
        link: json["link"],
        title: Guid.fromMap(json["title"]),
        content: Content.fromMap(json["content"]),
        template: json["template"],
        links: LinksModel.fromMap(json["_links"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "date": date.toIso8601String(),
        "date_gmt": dateGmt.toIso8601String(),
        "guid": guid.toMap(),
        "modified": modified.toIso8601String(),
        "modified_gmt": modifiedGmt.toIso8601String(),
        "slug": slug,
        "status": status,
        "type": type,
        "link": link,
        "title": title.toMap(),
        "content": content.toMap(),
        "template": template,
        "_links": links.toMap(),
      };
}
