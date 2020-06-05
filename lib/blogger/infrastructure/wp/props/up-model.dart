import 'dart:convert';

class WpUp {
  final bool embeddable;
  final String postType;
  final String href;

  WpUp({
    this.embeddable,
    this.postType,
    this.href,
  });

  factory WpUp.fromJson(String str) => WpUp.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WpUp.fromMap(Map<String, dynamic> json) => WpUp(
        embeddable: json["embeddable"],
        postType: json["post_type"],
        href: json["href"],
      );

  Map<String, dynamic> toMap() => {
        "embeddable": embeddable,
        "post_type": postType,
        "href": href,
      };
}
