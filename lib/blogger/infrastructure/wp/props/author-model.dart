class Author {
  final bool embeddable;
  final String href;

  Author({
    this.embeddable,
    this.href,
  });

  factory Author.fromMap(Map<String, dynamic> json) => Author(
        embeddable: json["embeddable"],
        href: json["href"],
      );

  Map<String, dynamic> toMap() => {
        "embeddable": embeddable,
        "href": href,
      };
}
