class PredecessorVersion {
  final int id;
  final String href;

  PredecessorVersion({
    this.id,
    this.href,
  });

  factory PredecessorVersion.fromMap(Map<String, dynamic> json) => PredecessorVersion(
        id: json["id"],
        href: json["href"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "href": href,
      };
}
