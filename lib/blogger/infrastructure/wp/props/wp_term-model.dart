class WpTerm {
  final String taxonomy;
  final bool embeddable;
  final String href;

  WpTerm({
    this.taxonomy,
    this.embeddable,
    this.href,
  });

  factory WpTerm.fromMap(Map<String, dynamic> json) => WpTerm(
        taxonomy: json["taxonomy"],
        embeddable: json["embeddable"],
        href: json["href"],
      );

  Map<String, dynamic> toMap() => {
        "taxonomy": taxonomy,
        "embeddable": embeddable,
        "href": href,
      };
}
