import 'dart:convert';

import 'package:afrotrends/blogger/infrastructure/wp/props/wp_props.dart';

class WpComment {
  final int id;
  final int post;
  final int parent;
  final int author;
  final String authorName;
  final String authorUrl;
  final DateTime date;
  final DateTime dateGmt;
  final Content content;
  final String link;
  final String status;
  final String type;
  final Map<String, String> authorAvatarUrls;
  final List<Meta> meta;
  final LinksModel links;

  WpComment({
    this.id,
    this.post,
    this.parent,
    this.author,
    this.authorName,
    this.authorUrl,
    this.date,
    this.dateGmt,
    this.content,
    this.link,
    this.status,
    this.type,
    this.authorAvatarUrls,
    this.meta,
    this.links,
  });

  factory WpComment.fromJson(String str) => WpComment.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WpComment.fromMap(Map<String, dynamic> json) => WpComment(
        id: json["id"],
        post: json["post"],
        parent: json["parent"],
        author: json["author"],
        authorName: json["author_name"],
        authorUrl: json["author_url"],
        date: DateTime.parse(json["date"]),
        dateGmt: DateTime.parse(json["date_gmt"]),
        content: Content.fromMap(json["content"]),
        link: json["link"],
        status: json["status"],
        type: json["type"],
        authorAvatarUrls: Map.from(json["author_avatar_urls"]).map((k, v) => MapEntry<String, String>(k, v)),
        meta: List<Meta>.from(json["meta"].map((x) => x)),
        links: LinksModel.fromMap(json["_links"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "post": post,
        "parent": parent,
        "author": author,
        "author_name": authorName,
        "author_url": authorUrl,
        "date": date.toIso8601String(),
        "date_gmt": dateGmt.toIso8601String(),
        "content": content.toMap(),
        "link": link,
        "status": status,
        "type": type,
        "author_avatar_urls": Map.from(authorAvatarUrls).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "meta": List<Meta>.from(meta.map((x) => x)),
        "_links": links.toMap(),
      };
}
