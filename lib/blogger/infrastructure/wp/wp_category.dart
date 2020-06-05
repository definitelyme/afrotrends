import 'dart:convert';

import 'package:afrotrends/blogger/domain/entities/category.dart';
import 'package:afrotrends/blogger/infrastructure/wp/props/wp_props.dart';
import 'package:afrotrends/blogger/infrastructure/wp/wp_media.dart';
import 'package:afrotrends/core/utils/constants.dart';
import 'package:meta/meta.dart';

class WpCategory extends PostCategory {
  final String id;
  final int count;
  final String description;
  final String href;
  final WpMedia media;
  final String name;
  final String slug;
  final LinksModel links;

  WpCategory({
    this.id,
    this.count,
    this.description,
    this.href,
    this.media,
    this.name,
    this.slug,
    this.links,
  });

  factory WpCategory.fromJson(String str) => WpCategory.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WpCategory.fromMap(Map<String, dynamic> json) {
    String findImageForCategory(String name) {
      if (name.contains("News")) return "$CATEGORIES_IMAGES_FOLDER/globe_image_1.jpg";
      if (name.contains("Music")) return "$CATEGORIES_IMAGES_FOLDER/cat_music.png";
      if (name.contains("People")) return "$CATEGORIES_IMAGES_FOLDER/cat_our_people.jpg";
      if (name.contains("Politics")) return "$CATEGORIES_IMAGES_FOLDER/cat_politics.jpg";
      if (name.contains("Sports")) return "$CATEGORIES_IMAGES_FOLDER/cat_sports.jpg";
      if (name.contains("Beauty")) return "$CATEGORIES_IMAGES_FOLDER/cat_beauty.jpg";
      if (name.contains("Entertainment") || name.contains("Trends") || name.contains("Celebrity"))
        return "$CATEGORIES_IMAGES_FOLDER/cat_entertain.jpg";
      else
        return "$CATEGORIES_IMAGES_FOLDER/globe_image_2.png";
    }

    return WpCategory(
      id: json["id"].toString(),
      name: json["name"],
      count: json["count"],
      description: json["description"],
      href: json["link"],
      media: WpMedia(id: "some-medi-id", sourceUrl: findImageForCategory(json['name'])),
      slug: json["slug"],
      links: LinksModel.fromMap(json["_links"]),
    );
  }

  Map<String, dynamic> toMap() => {
        "id": id,
        "count": count,
        "description": description,
        "link": href,
        "name": name,
        "slug": slug,
        "_links": links.toMap(),
      };
}

class WpCategories {
  final List<WpCategory> wpCategories;

  WpCategories({@required this.wpCategories});

  factory WpCategories.fromJson(String str) {
    List<dynamic> parsedJson = json.decode(str);
    return WpCategories(wpCategories: parsedJson.map((e) => WpCategory.fromMap(e)).toList());
  }

  factory WpCategories.fromMap(List<dynamic> data) => WpCategories(
        wpCategories: List<WpCategory>.from(
          data != null ? data.map((x) => WpCategory.fromMap(x)) : [],
        ).toList(),
      );

  List<dynamic> toMap() => List<dynamic>.from(wpCategories.map((x) => x.toMap()));
}
