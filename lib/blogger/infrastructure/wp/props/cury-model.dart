class Cury {
  final String name;
  final String href;
  final bool templated;

  Cury({
    this.name,
    this.href,
    this.templated,
  });

  factory Cury.fromMap(Map<String, dynamic> json) => Cury(
        name: json["name"],
        href: json["href"],
        templated: json["templated"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "href": href,
        "templated": templated,
      };
}
