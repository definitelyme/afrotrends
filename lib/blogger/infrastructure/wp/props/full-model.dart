import 'package:afrotrends/blogger/infrastructure/wp/props/mime_type-enum.dart';

class Full {
  final String file;
  final int width;
  final int height;
  final MimeType mimeType;
  final String sourceUrl;
  
  Full({
         this.file,
         this.width,
         this.height,
         this.mimeType,
         this.sourceUrl,
       });
  
  factory Full.fromMap(Map<String, dynamic> json) => Full(
    file: json["file"],
    width: json["width"],
    height: json["height"],
    mimeType: mimeTypeValues.map[json["mime_type"]],
    sourceUrl: json["source_url"],
  );
  
  Map<String, dynamic> toMap() => {
    "file": file,
    "width": width,
    "height": height,
    "mime_type": mimeTypeValues.reverse[mimeType],
    "source_url": sourceUrl,
  };
}