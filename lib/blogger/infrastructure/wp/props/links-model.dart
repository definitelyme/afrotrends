import 'dart:convert';

import 'package:afrotrends/blogger/domain/entities/links.dart';

class LinksModel extends Links {
  final List<SingleLinkModel> self;
  final List<SingleLinkModel> modelTypeLinks;
  final List<SingleLinkModel> authorsLinks;
  final List<SingleLinkModel> replyLinks;
  final List<SingleLinkModel> wpFeaturedMedia;
  final List<SingleLinkModel> wpAttachments;
  final List<TermLinksModel> termLinks;
  final List<SingleLinkModel> wpPostType;

  LinksModel({
    this.self,
    this.modelTypeLinks,
    this.authorsLinks,
    this.replyLinks,
    this.wpFeaturedMedia,
    this.wpAttachments,
    this.termLinks,
    this.wpPostType,
  });

  factory LinksModel.fromJson(String str) => LinksModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LinksModel.fromMap(Map<String, dynamic> json) => LinksModel(
        self: List<SingleLinkModel>.from(json != null && json["self"] != null ? json["self"].map((x) => SingleLinkModel.fromMap(x)) : []),
        modelTypeLinks: List<SingleLinkModel>.from(json != null && json["about"] != null ? json["about"].map((x) => SingleLinkModel.fromMap(x)) : []),
        authorsLinks: List<SingleLinkModel>.from(json != null && json["author"] != null ? json["author"].map((x) => SingleLinkModel.fromMap(x)) : []),
        replyLinks: List<SingleLinkModel>.from(json != null && json["replies"] != null ? json["replies"].map((x) => SingleLinkModel.fromMap(x)) : []),
        wpFeaturedMedia: List<SingleLinkModel>.from(json != null && json["wp:featuredmedia"] != null ? json["wp:featuredmedia"].map((x) => SingleLinkModel.fromMap(x)) : []),
        wpAttachments: List<SingleLinkModel>.from(json != null && json["wp:attachment"] != null ? json["wp:attachment"].map((x) => SingleLinkModel.fromMap(x)) : []),
        termLinks: List<TermLinksModel>.from(json != null && json["wp:term"] != null ? json["wp:term"].map((x) => TermLinksModel.fromMap(x)) : []),
        wpPostType: List<SingleLinkModel>.from(json != null && json["wp:post_type"] != null ? json["wp:post_type"].map((x) => SingleLinkModel.fromMap(x)) : []),
      );

  Map<String, dynamic> toMap() => {
        "self": List<dynamic>.from(self.map((x) => x.toMap())),
        "about": List<dynamic>.from(modelTypeLinks.map((x) => x.toMap())),
        "author": List<dynamic>.from(authorsLinks.map((x) => x.toMap())),
        "replies": List<dynamic>.from(replyLinks.map((x) => x.toMap())),
        "wp:featuredmedia": List<dynamic>.from(wpFeaturedMedia.map((x) => x.toMap())),
        "wp:attachment": List<dynamic>.from(wpAttachments.map((x) => x.toMap())),
        "wp:term": List<dynamic>.from(termLinks.map((x) => x.toMap())),
        "wp:post_type": List<dynamic>.from(wpPostType.map((x) => x.toMap())),
      };
}

class SingleLinkModel extends SingleLink {
  final String href;

  SingleLinkModel({this.href});

  factory SingleLinkModel.fromJson(String str) => SingleLinkModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SingleLinkModel.fromMap(Map<String, dynamic> json) => SingleLinkModel(
        href: json["href"],
      );

  Map<String, dynamic> toMap() => {
        "href": href,
      };
}

class TermLinksModel extends TermLinks {
  final String taxonomy;
  final bool embeddable;
  final String href;

  TermLinksModel({
    this.taxonomy,
    this.embeddable,
    this.href,
  });

  factory TermLinksModel.fromMap(Map<String, dynamic> json) => TermLinksModel(
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
