import 'dart:convert';

import 'package:afrotrends/blogger/domain/entities/user.dart';

class WpUser extends User {
  final String id;
  final String name;
  final String link;
  final String slug;
  final Map<String, String> avatarUrls;

  WpUser({
    this.id,
    this.name,
    this.link,
    this.slug,
    this.avatarUrls,
  }) : super(avatarUrl: avatarUrls.values.last);

  factory WpUser.fromJson(String str) => WpUser.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WpUser.fromMap(Map<String, dynamic> json) => WpUser(
      id: json != null ? json["id"]?.toString() : null,
      name: json != null ? json["name"]?.toString() : null,
      link: json != null ? json["link"]?.toString() : null,
      slug: json != null ? json["slug"]?.toString() : null,
      avatarUrls: json != null ? Map.from(json["avatar_urls"]).map((k, v) => MapEntry<String, String>(k, v)) : null,
    );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "link": link,
        "slug": slug,
        "avatar_urls": Map.from(avatarUrls).map((k, v) => MapEntry<String, dynamic>(k, v)),
      };
}
