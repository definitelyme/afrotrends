class Guid {
  final String rendered;

  Guid({
    this.rendered,
  });

  factory Guid.fromMap(Map<String, dynamic> json) => Guid(
        rendered: json["rendered"],
      );

  Map<String, dynamic> toMap() => {
        "rendered": rendered,
      };
}
