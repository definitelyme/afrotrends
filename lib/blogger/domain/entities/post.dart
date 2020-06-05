import 'dart:math' as Math;

import 'package:afrotrends/blogger/domain/entities/category.dart';
import 'package:afrotrends/blogger/domain/entities/links.dart';
import 'package:afrotrends/blogger/domain/entities/media.dart';
import 'package:afrotrends/blogger/domain/entities/model.dart';
import 'package:afrotrends/blogger/domain/entities/user.dart';
import 'package:afrotrends/core/utils/constants.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class Post extends Model {
  final String id;
  final String title;
  final String content;
  final String slug;
  final List<PostCategory> categories;
  final User author;
  final String excerpt;
  final Media media;
  final String type;
  final Links links;
  final int count;
  final int totalPages;
  final String humanDiff;

  Post({
    this.id,
    this.title,
    this.content,
    this.slug,
    this.categories,
    this.author,
    this.excerpt,
    this.media,
    this.type,
    this.links,
    this.count,
    this.totalPages,
    this.humanDiff,
    String createdAt,
    String updatedAt,
  }) : super(id: id, createdAt: createdAt, updatedAt: updatedAt);

  @override
  List<Object> get props => [id, title, content, slug, categories, author, excerpt, media, type, count, links, humanDiff, totalPages, createdAt, updatedAt];

  static List<User> _authors() => [
        User(id: UniqueKey().toString(), name: "Kennedy"),
        User(id: UniqueKey().toString(), name: "Black"),
        User(id: UniqueKey().toString(), name: "Wilson"),
        User(id: UniqueKey().toString(), name: "Williams"),
        User(id: UniqueKey().toString(), name: "James Hunt"),
        User(id: UniqueKey().toString(), name: "Lucas"),
        User(id: UniqueKey().toString(), name: "Jerry"),
        User(id: UniqueKey().toString(), name: "Jeremiah"),
        User(id: UniqueKey().toString(), name: "Brian"),
      ];

  static List<PostCategory> localTopics() {
    return [
      PostCategory(id: UniqueKey().toString(), name: "Beauty"),
      PostCategory(id: UniqueKey().toString(), name: "Sports"),
      PostCategory(id: UniqueKey().toString(), name: "Entertainment"),
      PostCategory(id: UniqueKey().toString(), name: "Politics"),
      PostCategory(id: UniqueKey().toString(), name: "Trends"),
      PostCategory(id: UniqueKey().toString(), name: "Art & Culture"),
    ];
  }

  static List<Post> localPosts() {
    DateTime now = DateTime.now();
    DateTime timestamp = DateTime(now.year, now.month, now.day, now.hour, now.minute);
    const devText = "But cruise companies face an uphill battle to recover. "
        "Cruises have become beleaguered poster children of the pandemic as news stories "
        "chronicle the plight of ships carrying infected passengers. At press time, Holland "
        "America’s Zaandam and Rotterdam ships were finally granted permission to disembark at Port Everglades "
        "in Fort Lauderdale, Florida, after the Coast Guard balked at allowing them to dock. On March 8, "
        "the Center for Disease Control and the State Department told Americans to stop taking cruises and "
        "published a detailed explanation why those ships increase the virus’s “risk and impact.”";

    return [
      Post(
        id: UniqueKey().toString(),
        title: "Video – Los Angeles Protests Are Turning Into A Riot As Police Clashes Turn Violent With One Person Hospitalized.",
        excerpt: "Protests are beginning to ramp up nationwide as people are starting to truly show their outrage over the videotaped murder of George Floyd",
        categories: localTopics(),
        content: devText,
        media: Media(sourceUrl: "$DEV_IMAGES_FOLDER/post-1.jpg"),
        author: _authors().elementAt(Math.Random().nextInt(_authors().length)),
        createdAt: DateFormat.yMMMd().format(timestamp),
      ),
      Post(
        id: UniqueKey().toString(),
        title: "Video – Enraged Protesters Clash With Police After George Floyd’s Death",
        excerpt: "Following the death of George Floyd, Chaos broke out on Tuesday night in Minneapolis. Protesters took to the streets to demand action as a result of the",
        categories: localTopics(),
        content: devText,
        media: Media(sourceUrl: "$DEV_IMAGES_FOLDER/post-2.jpg"),
        author: _authors().elementAt(Math.Random().nextInt(_authors().length)),
        createdAt: DateFormat.yMMMd().format(timestamp),
      ),
      Post(
        id: UniqueKey().toString(),
        title: "Naomi Osaka Makes History, Tops Serena Williams As The Highest-Paid Female Athlete In History",
        excerpt: "Currently referred to as Black Magic Girl, Naomi Osaka makes history for herself and the world of tennis by becoming the highest paid tennis",
        categories: localTopics(),
        media: Media(sourceUrl: "$DEV_IMAGES_FOLDER/post-3.jpeg"),
        content: devText,
        author: _authors().elementAt(Math.Random().nextInt(_authors().length)),
        createdAt: DateFormat.yMMMd().format(timestamp),
      ),
      Post(
        id: UniqueKey().toString(),
        title: "Georgia’s Most Influential Black Women Make Joe Biden’s List Of Potential Running Mates",
        excerpt: "Stacey Abrams and Keisha Lance Bottoms have spent years building and climbing parallel ladders at Atlanta City Hall and the Georgia Capitol.  Keisha, 50",
        categories: localTopics(),
        media: Media(sourceUrl: "$DEV_IMAGES_FOLDER/post-4.jpg"),
        content: devText,
        author: _authors().elementAt(Math.Random().nextInt(_authors().length)),
        createdAt: DateFormat.yMMMd().format(timestamp),
      ),
      Post(
        id: UniqueKey().toString(),
        title: "Kim Kardashian Debuts Her New Face In New Instagram Post",
        excerpt: "Kimmy K is back posting sexy pictures on her instagram. The mother and wife decided to let the boobs hang out and tease those",
        categories: localTopics(),
        content: devText,
        media: Media(sourceUrl: "$DEV_IMAGES_FOLDER/post-5.jpg"),
        author: _authors().elementAt(Math.Random().nextInt(_authors().length)),
        createdAt: DateFormat.yMMMd().format(timestamp),
      ),
      Post(
        id: UniqueKey().toString(),
        title: "Akon And 6ix9ine Go Head To Head In A Battle Of Hits",
        excerpt: "Akon and 6ix9ine might be going head-to-head in a battle of hits; at least according to Akon. No one saw that coming! The platinum-selling",
        categories: localTopics(),
        content: devText,
        media: Media(sourceUrl: "$DEV_IMAGES_FOLDER/post-6.jpg"),
        author: _authors().elementAt(Math.Random().nextInt(_authors().length)),
        createdAt: DateFormat.yMMMd().format(timestamp),
      ),
    ];
  }
}
