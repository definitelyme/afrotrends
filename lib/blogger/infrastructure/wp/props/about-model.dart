import 'dart:convert';

class About {
  final String href;

  About({this.href});

  factory About.fromJson(String str) => About.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory About.fromMap(Map<String, dynamic> json) => About(
        href: json["href"],
      );

  Map<String, dynamic> toMap() => {
        "href": href,
      };
}
