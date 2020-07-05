import 'package:afrotrends/features/data/remote/models/post/exports.dart';
import 'package:afrotrends/utils/colors.dart';
import 'package:afrotrends/utils/helpers.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:html/parser.dart';
import 'package:timeago/timeago.dart' as timeago;

class AtHorizontalList extends StatelessWidget {
  final String tagPrefix;
  final Post post;

  const AtHorizontalList({Key key, @required this.tagPrefix, @required this.post})
      : assert(tagPrefix != null),
        assert(post != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    String postTitle = parse(parse(post?.title?.rendered).body.text).documentElement.text;

    return Container(
      height: Get.height * 0.17,
      margin: EdgeInsets.only(bottom: Get.width * 0.03, right: Get.width * 0.04),
      child: Hero(
        tag: "$tagPrefix-${post.id}",
        child: Material(
          clipBehavior: Clip.hardEdge,
          type: MaterialType.transparency,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8.0),
          child: InkWell(
            onTap: () => navigateToPostDetail("$tagPrefix-${post.id}", post),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Flexible(
                  flex: 6,
                  child: CachedNetworkImage(
                    imageUrl: post?.customField?.featuredImage?.first?.sourceUrl,
                    imageBuilder: (context, imageProvider) => Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
                      ),
                    ),
                    placeholder: (context, url) => Center(
                      child: CupertinoActivityIndicator(),
                    ),
                    errorWidget: (context, url, error) => Icon(Icons.error, color: AtColors.accentColor),
                  ),
                ),
                SizedBox(width: Get.width * 0.05),
                Flexible(
                  flex: 10,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          flex: 2,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: post.customField.categories.take(2).length,
                            itemBuilder: (_, index) => Container(
                              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
                              child: AutoSizeText(
                                post.customField.categories.take(2).elementAt(index).name,
                                maxLines: 1,
                                style: Get.textTheme.bodyText1.copyWith(color: AtColors.accentColor.shade300),
                              ),
                              decoration: BoxDecoration(
                                color: AtColors.accentColor.shade300.withAlpha(30),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            separatorBuilder: (_, index) => SizedBox(width: 8.0),
                          ),
                        ),
                        Flexible(
                          flex: 4,
                          child: Container(
                            child: AutoSizeText(
                              postTitle,
                              maxLines: 3,
                              softWrap: true,
                              minFontSize: 14.0,
                              overflow: TextOverflow.ellipsis,
                              style: Get.textTheme.bodyText1,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          child: Container(
                            child: RichText(
                              text: TextSpan(
                                text: "By ${post.customField.user.displayName}",
                                style: Get.textTheme.caption.copyWith(fontSize: 12.0),
                                children: [
                                  TextSpan(text: " ∙ ", style: Get.textTheme.subtitle2.copyWith(fontWeight: FontWeight.bold)),
                                  TextSpan(text: "${timeago.format(DateTime.parse(post.createdAt))}"),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
