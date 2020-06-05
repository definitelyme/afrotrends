class VersionHistory {
  final int count;
  final String href;

  VersionHistory({
    this.count,
    this.href,
  });

  factory VersionHistory.fromMap(Map<String, dynamic> json) => VersionHistory(
        count: json["count"],
        href: json["href"],
      );

  Map<String, dynamic> toMap() => {
        "count": count,
        "href": href,
      };
}
