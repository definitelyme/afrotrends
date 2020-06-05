import 'package:afrotrends/blogger/domain/entities/model.dart';

class Links extends Model {
  final List<SingleLink> self;
  final List<SingleLink> modelTypeLinks;
  final List<SingleLink> authorsLinks;
  final List<SingleLink> replyLinks;
  final List<SingleLink> wpFeaturedMedia;
  final List<SingleLink> wpAttachments;
  final List<TermLinks> termLinks;
  final List<SingleLink> wpPostType;

  Links({
    this.self,
    this.modelTypeLinks,
    this.authorsLinks,
    this.replyLinks,
    this.wpFeaturedMedia,
    this.wpAttachments,
    this.termLinks,
    this.wpPostType,
  });

  @override
  List<Object> get props => [];
}

// Single Links (Like Author links, Replies Link etc)
class SingleLink extends Model {
  final String href;

  SingleLink({this.href});

  @override
  List<Object> get props => [href];
}

// Term Links (like = Category links, Tag links etc.)
class TermLinks extends Model {
  final String taxonomy;
  final bool embeddable;
  final String href;

  TermLinks({
    this.taxonomy,
    this.embeddable,
    this.href,
  });

  factory TermLinks.fromMap(Map<String, dynamic> json) => TermLinks(
        taxonomy: json["taxonomy"],
        embeddable: json["embeddable"],
        href: json["href"],
      );

  Map<String, dynamic> toMap() => {
        "taxonomy": taxonomy,
        "embeddable": embeddable,
        "href": href,
      };

  @override
  List<Object> get props => [taxonomy, embeddable, href];
}
