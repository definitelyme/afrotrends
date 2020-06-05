class Caption {
  final String rendered;

  Caption({
    this.rendered,
  });

  factory Caption.fromMap(Map<String, dynamic> json) => Caption(
        rendered: json["rendered"],
      );

  Map<String, dynamic> toMap() => {
        "rendered": rendered,
      };
}
