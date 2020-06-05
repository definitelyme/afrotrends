class Meta {
  final String ampStatus;

  Meta({
    this.ampStatus,
  });

  factory Meta.fromMap(Map<String, dynamic> json) => Meta(
        ampStatus: json["amp_status"],
      );

  Map<String, dynamic> toMap() => {
        "amp_status": ampStatus,
      };
}
