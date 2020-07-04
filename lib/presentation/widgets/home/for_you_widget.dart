import 'package:afrotrends/features/data/remote/models/post/exports.dart';
import 'package:afrotrends/features/data/remote/models/taxonomy/exports_taxonomy.dart';
import 'package:afrotrends/features/domain/api_client/exports.dart';
import 'package:afrotrends/presentation/manager/home_bloc/home_bloc.dart';
import 'package:afrotrends/presentation/pages/detail/post_detail_screen.dart';
import 'package:afrotrends/utils/colors.dart';
import 'package:afrotrends/utils/helpers.dart';
import 'package:afrotrends/utils/navigator.dart';
import 'package:afrotrends/widgets/exports_widget.dart';
import 'package:afrotrends/widgets/shimmers/rectangle_shimmer.dart';
import 'package:afrotrends/widgets/shimmers/shimmer_bottom_content.dart';
import 'package:afrotrends/widgets/shimmers/shimmer_right_content.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:html/parser.dart';
import 'package:intl/intl.dart';
import 'package:slugify/slugify.dart';
import 'package:timeago/timeago.dart' as timeago;

part './for_you_widgets/latest_news_horizontal_list.dart';
part './for_you_widgets/older_posts_vertical_list.dart';
part './for_you_widgets/popular_topics_horizontal_list.dart';

class ForYouWidget extends StatelessWidget {
  static final name = "For You";

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: defaultEdgeSpacing(context, right: 0.0),
      children: [
        SizedBox(height: Get.height * 0.03),
        Container(
          padding: EdgeInsets.only(right: deviceMargin(context)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("LATEST NEWS", style: Get.textTheme.subtitle2.copyWith(color: Colors.grey, fontSize: 15.0, fontWeight: FontWeight.w500)),
              Text(
                DateFormat.yMMMEd().format(DateTime.now()),
                style: Get.textTheme.bodyText1.copyWith(color: AtColors.accentColor.shade300),
              ),
            ],
          ),
        ),
        SizedBox(height: Get.height * 0.02),
        LatestNewsHorizontalList(),
        SizedBox(height: Get.height * 0.04),
        Container(
          padding: EdgeInsets.only(right: deviceMargin(context)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("POPULAR TOPICS",
                  style: Get.textTheme.subtitle1.copyWith(color: Colors.grey, fontSize: 15.0, fontWeight: FontWeight.w500)),
            ],
          ),
        ),
        SizedBox(height: Get.height * 0.01),
        PopularTopicsHorizontalList(),
        SizedBox(height: Get.height * 0.04),
        Container(
          padding: EdgeInsets.only(right: deviceMargin(context)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("LAST WEEK", style: Get.textTheme.subtitle1.copyWith(color: Colors.grey, fontSize: 15.0, fontWeight: FontWeight.w500)),
            ],
          ),
        ),
        SizedBox(height: Get.height * 0.01),
        OlderPostsVerticalList(),
        SizedBox(height: Get.height * 0.02),
      ],
    );
  }
}
