import 'dart:convert';

import 'package:afrotrends/blogger/infrastructure/wp/props/wp_props.dart';

class WpPage {
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
  final Content excerpt;
  final int author;
  final int featuredMedia;
  final int parent;
  final int menuOrder;
  final String commentStatus;
  final String pingStatus;
  final String template;
  final Meta meta;
  final LinksModel links;

  WpPage({
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
    this.excerpt,
    this.author,
    this.featuredMedia,
    this.parent,
    this.menuOrder,
    this.commentStatus,
    this.pingStatus,
    this.template,
    this.meta,
    this.links,
  });

  factory WpPage.fromJson(String str) => WpPage.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WpPage.fromMap(Map<String, dynamic> json) => WpPage(
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
        excerpt: Content.fromMap(json["excerpt"]),
        author: json["author"],
        featuredMedia: json["featured_media"],
        parent: json["parent"],
        menuOrder: json["menu_order"],
        commentStatus: json["comment_status"],
        pingStatus: json["ping_status"],
        template: json["template"],
        meta: Meta.fromMap(json["meta"]),
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
        "excerpt": excerpt.toMap(),
        "author": author,
        "featured_media": featuredMedia,
        "parent": parent,
        "menu_order": menuOrder,
        "comment_status": commentStatus,
        "ping_status": pingStatus,
        "template": template,
        "meta": meta.toMap(),
        "_links": links.toMap(),
      };
}
