import 'package:afrotrends/blogger/infrastructure/wp/props/image_meta-model.dart';
import 'package:afrotrends/blogger/infrastructure/wp/props/sizes-model.dart';

class MediaDetails {
  final int width;
  final int height;
  final String file;
  final MediaSizes sizes;
  final ImageMeta imageMeta;

  MediaDetails({
    this.width,
    this.height,
    this.file,
    this.sizes,
    this.imageMeta,
  });

  factory MediaDetails.fromMap(Map<String, dynamic> json) => MediaDetails(
        width: json["width"],
        height: json["height"],
        file: json["file"],
        sizes: MediaSizes.fromMap(json["sizes"]),
        imageMeta: ImageMeta.fromMap(json["image_meta"]),
      );

  Map<String, dynamic> toMap() => {
        "width": width,
        "height": height,
        "file": file,
        "sizes": sizes.toMap(),
        "image_meta": imageMeta.toMap(),
      };
}
