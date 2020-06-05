import 'dart:convert';

import 'package:afrotrends/blogger/domain/entities/post.dart';
import 'package:afrotrends/blogger/infrastructure/wp/props/wp_props.dart';
import 'package:afrotrends/blogger/infrastructure/wp/wp_category.dart';
import 'package:afrotrends/blogger/infrastructure/wp/wp_media.dart';
import 'package:afrotrends/blogger/infrastructure/wp/wp_user.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

class WpPost extends Post {
  final String id;
  final String slug;
  final String type;
  final String title;
  final String content;
  final List<WpCategory> categories;
  final WpUser author;
  final String excerpt;
  final WpMedia media;
  final LinksModel links;

  WpPost({
    this.id,
    this.slug,
    this.type,
    this.title,
    this.content,
    this.categories,
    this.author,
    this.excerpt,
    this.media,
    this.links,
    int count,
    int totalPages,
    String humanDateDiff,
    String createdAt,
    String updatedAt,
  }) : super(id: id, count: count, totalPages: totalPages, humanDiff: humanDateDiff, createdAt: createdAt, updatedAt: updatedAt);

  factory WpPost.fromJson(String str) => WpPost.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  static List encodeToJsonList(List<WpPost> posts) => posts.map((e) => e.toMap()).toList();

  factory WpPost.fromMap(Map<String, dynamic> json) {
    return WpPost(
      id: json["id"].toString(),
      slug: json["slug"],
      type: json["type"],
      title: Guid.fromMap(json["title"]).rendered,
      content: Content.fromMap(json["content"]).rendered,
      categories: WpCategories.fromMap(json["categories"]).wpCategories,
      author: WpUser.fromMap(json["author"]),
      excerpt: Content.fromMap(json["excerpt"]).rendered,
      media: WpMedia.fromMap(json["featured_media"]),
      links: LinksModel.fromMap(json["_links"]),
      count: int.parse(json['posts_count']),
      totalPages: int.parse(json['posts_pages_count']),
      humanDateDiff: DateFormat.yMMMEd().format(DateTime.parse(json["date"])),
      createdAt: DateFormat.yMMMEd().format(DateTime.parse(json["date"])),
      updatedAt: DateFormat.yMMMEd().format(DateTime.parse(json["modified"])),
    );
  }

  Map<String, dynamic> toMap() => {
        "id": id,
        "date": createdAt,
        "modified": updatedAt,
        "slug": slug,
        "type": type,
        "title": Guid(rendered: title).toMap(),
        "content": Content(rendered: content).toMap(),
        "excerpt": Content(rendered: excerpt).toMap(),
        "_links": links.toMap(),
      };
}

class WpPosts {
  final List<WpPost> wpPosts;

  WpPosts({@required this.wpPosts});

  factory WpPosts.fromJson(String str) {
    List<dynamic> parsedJson = json.decode(str);
    return WpPosts(wpPosts: parsedJson.map((e) => WpPost.fromMap(e)).toList());
  }

  factory WpPosts.fromMap(List<dynamic> data) => WpPosts(
        wpPosts: List<WpPost>.from(
          data != null ? data.map((x) => WpPost.fromMap(x)) : [],
        ).toList(),
      );

  List<dynamic> toMap() => List<dynamic>.from(wpPosts.map((x) => x.toMap()));
}
