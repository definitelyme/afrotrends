import 'package:afrotrends/blogger/infrastructure/wp/props/wp_props.dart';

class MediaSizes {
  final MediaSize medium;
  final MediaSize large;
  final MediaSize thumbnail;
  final MediaSize mediumLarge;
  final MediaSize postThumbnail;
  final MediaSize zoxLargeThumb;
  final MediaSize zoxMidThumb;
  final MediaSize zoxSquareThumb;
  final MediaSize zoxSmallThumb;
  final MediaSize full;

  MediaSizes({
    this.medium,
    this.large,
    this.thumbnail,
    this.mediumLarge,
    this.postThumbnail,
    this.zoxLargeThumb,
    this.zoxMidThumb,
    this.zoxSquareThumb,
    this.zoxSmallThumb,
    this.full,
  });

  factory MediaSizes.fromMap(Map<String, dynamic> json) => MediaSizes(
        medium: MediaSize.fromMap(json["medium"]),
        large: MediaSize.fromMap(json["large"]),
        thumbnail: MediaSize.fromMap(json["thumbnail"]),
        mediumLarge: MediaSize.fromMap(json["medium_large"]),
        postThumbnail: MediaSize.fromMap(json["post-thumbnail"]),
        zoxLargeThumb: MediaSize.fromMap(json["zox-large-thumb"]),
        zoxMidThumb: MediaSize.fromMap(json["zox-mid-thumb"]),
        zoxSquareThumb: MediaSize.fromMap(json["zox-square-thumb"]),
        zoxSmallThumb: MediaSize.fromMap(json["zox-small-thumb"]),
        full: MediaSize.fromMap(json["full"]),
      );

  Map<String, dynamic> toMap() => {
        "medium": medium.toMap(),
        "large": large.toMap(),
        "thumbnail": thumbnail.toMap(),
        "medium_large": mediumLarge.toMap(),
        "post-thumbnail": postThumbnail.toMap(),
        "zox-large-thumb": zoxLargeThumb.toMap(),
        "zox-mid-thumb": zoxMidThumb.toMap(),
        "zox-square-thumb": zoxSquareThumb.toMap(),
        "zox-small-thumb": zoxSmallThumb.toMap(),
        "full": full.toMap(),
      };
}


class MediaSize {
  final String file;
  final int width;
  final int height;
  final MimeType mimeType;
  final String sourceUrl;
  
  MediaSize({
         this.file,
         this.width,
         this.height,
         this.mimeType,
         this.sourceUrl,
       });
  
  factory MediaSize.fromMap(Map<String, dynamic> json) => MediaSize(
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