import 'package:afrotrends/blogger/app/blocs/home_screen_bloc/bloc.dart';
import 'package:afrotrends/blogger/app/blocs/root_bloc/bloc.dart';
import 'package:afrotrends/blogger/domain/entities/post.dart';
import 'package:afrotrends/blogger/domain/routeArgs/model_route_arg.dart';
import 'package:afrotrends/blogger/screens/post_screen.dart';
import 'package:afrotrends/core/navigator.dart';
import 'package:afrotrends/core/shimmers/shimmer_bottom_content.dart';
import 'package:afrotrends/core/utils/app_colors.dart';
import 'package:afrotrends/core/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';
import 'package:html/parser.dart';
import 'package:intl/intl.dart';

class HomeTabItemScreen extends StatelessWidget {
  final String listItem;

  const HomeTabItemScreen({Key key, @required this.listItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenBloc, HomeScreenState>(builder: (context, snapshot) {
      return Scaffold(
        body: ListView(
          padding: defaultEdgeSpacing(context),
          children: [
            SizedBox(height: Get.height * 0.03),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("This Week", style: Get.textTheme.subtitle2.copyWith(color: Colors.grey, fontSize: 15.0, fontWeight: FontWeight.w500)),
                  Text(
                    "Mon - Sun, ${DateFormat.yMMMM().format(DateTime.now())}",
                    style: Get.textTheme.bodyText1.copyWith(color: AppColors.oylexAccent.shade300),
                  ),
                ],
              ),
            ),
            SizedBox(height: Get.height * 0.02),
            Container(
              height: Get.height * 0.33,
              child: __topCardSwiperList(context.bloc<HomeScreenBloc>().state),
            ),
            SizedBox(height: Get.height * 0.05),
            Text("Older Posts", style: Get.textTheme.subtitle2.copyWith(color: Colors.grey, fontSize: 17.0, fontWeight: FontWeight.w500)),
            SizedBox(height: Get.height * 0.02),
            Container(
              height: Get.height * 0.43,
              child: __bottomCardSwiperList(context.bloc<HomeScreenBloc>().state),
            ),
            SizedBox(height: Get.height * 0.1),
          ],
        ),
      );
    });
  }

  Widget __topCardSwiperList(HomeScreenState state) {
    Widget _mapStateToWidget(List<dynamic> posts) {
      if (posts == null || posts == [] || posts.isEmpty)
        return Swiper(
          itemBuilder: (BuildContext context, int index) => ShimmerBottomContent(
            shimmerBaseColor: Colors.grey[300],
            shimmerHighlightColor: Colors.grey[100],
            boxColor: Colors.black,
            borderRadius: 8.0,
          ),
          itemCount: ((Get.width) / (Get.width * 0.3)).ceil(),
          viewportFraction: 0.75,
          loop: false,
          controller: SwiperController(),
          physics: BouncingScrollPhysics(),
          scale: 0.75,
        );

      if (!state.isInit && (posts == [] || posts.isEmpty))
        return Center(
          child: Container(
            child: Text("No posts this week!", style: Get.textTheme.headline5),
          ),
        );

      return Swiper(
        itemBuilder: (BuildContext context, int index) => StoryCard(
          footerFlex: 2,
          post: posts.elementAt(index),
          maxLines: 3,
          categoriesCount: 1,
        ),
        itemCount: posts.length,
        viewportFraction: 0.8,
        loop: false,
        controller: SwiperController(),
        physics: BouncingScrollPhysics(),
        scale: 0.9,
      );
    }

    if (listItem.contains("Trends")) return _mapStateToWidget(state.viralTrends);
    if (listItem.contains("Entertainment")) return _mapStateToWidget(state.entertainment);
    if (listItem.contains("Stories")) return _mapStateToWidget(state.topStories);
    if (listItem.contains("Beauty")) return _mapStateToWidget(state.beauty);
  }

  Widget __bottomCardSwiperList(HomeScreenState state) {
    Widget _mapStateToWidget(List<dynamic> posts) {
      if (posts == null || posts == [] || posts.isEmpty)
        return Swiper(
          itemBuilder: (BuildContext context, int index) => ShimmerBottomContent(
            shimmerBaseColor: Colors.grey[300],
            shimmerHighlightColor: Colors.grey[100],
            boxColor: Colors.black,
            borderRadius: 8.0,
          ),
          itemCount: ((Get.width) / (Get.width * 0.3)).ceil(),
          viewportFraction: 0.9,
          loop: false,
          controller: SwiperController(),
          physics: BouncingScrollPhysics(),
          scale: 0.93,
        );

      if (!state.isInit && (posts == [] || posts.isEmpty))
        return Center(
          child: Container(
            child: Text("All clear!", style: Get.textTheme.headline5),
          ),
        );

      return Swiper(
        itemBuilder: (BuildContext context, int index) => StoryCard(
          titleAlignment: Alignment.centerLeft,
          showCategories: true,
          maxLines: 4,
          post: posts.elementAt(index),
        ),
        itemCount: posts.length,
        viewportFraction: 0.9,
        loop: false,
        controller: SwiperController(),
        physics: BouncingScrollPhysics(),
        scale: 0.93,
      );
    }

    if (listItem.contains("Trends")) return _mapStateToWidget(state.olderViralTrends);
    if (listItem.contains("Entertainment")) return _mapStateToWidget(state.olderEntertainments);
    if (listItem.contains("Stories")) return _mapStateToWidget(state.olderTopStories);
    if (listItem.contains("Beauty")) return _mapStateToWidget(state.olderBeauty);
  }
}

class StoryCard extends StatelessWidget {
  final Alignment titleAlignment, bodyAlignment, footerAlignment;
  final int titleFlex, bodyFlex, footerFlex;
  final int maxLines;
  final bool showCategories;
  final Post post;
  final double borderRadius;
  final int categoriesCount;

  const StoryCard({
    Key key,
    this.titleAlignment = Alignment.topLeft,
    this.bodyAlignment = Alignment.topLeft,
    this.footerAlignment = Alignment.bottomLeft,
    this.maxLines = 2,
    this.showCategories = false,
    this.titleFlex = 2,
    this.bodyFlex = 2,
    this.footerFlex = 1,
    this.post,
    this.categoriesCount = 2,
    this.borderRadius = 16.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String title = parse(parse(post?.title).body.text).documentElement.text;
    final String body = parse(parse(post?.excerpt).body.text).documentElement.text;

    return Material(
      clipBehavior: Clip.hardEdge,
      type: MaterialType.transparency,
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(borderRadius),
      child: Ink(
        child: InkWell(
          splashColor: Colors.black54,
          highlightColor: Colors.grey.shade400,
          onTap: () => navigateAndPush(
            routeName: PostScreen.routeName,
            arguments: ModelRouteArg(model: post, heroTag: "home-tag-${post.id}"),
          ),
          child: Container(
            height: double.infinity,
            padding: defaultEdgeSpacing(context, top: 10, bottom: 10),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(borderRadius),
              backgroundBlendMode: BlendMode.overlay,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 10.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(post.author.avatarUrl),
                            backgroundColor: AppColors.oylexPrimary,
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(post.author.name, style: Get.textTheme.headline6.copyWith(fontSize: 15.0)),
                                Text(post.createdAt, style: TextStyle(color: Colors.grey.shade600, fontSize: 13.0)),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: post.categories
                                .take(categoriesCount)
                                .map<Widget>(
                                  (e) => Container(
                                    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                                    child: Text(
                                      e.name,
                                      style: Get.textTheme.bodyText1.copyWith(color: AppColors.oylexAccent.shade100, fontSize: 13.0),
                                      softWrap: true,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    decoration: BoxDecoration(
                                      color: AppColors.oylexAccent.shade100.withAlpha(30),
                                      borderRadius: BorderRadius.circular(defaultCardRadius()),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: titleFlex,
                  child: Container(
                    alignment: titleAlignment,
                    child: Text(
                      title,
                      style: Get.textTheme.headline6.copyWith(fontSize: 17),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                ),
                Flexible(
                  flex: bodyFlex,
                  child: Container(
                    alignment: bodyAlignment,
                    child: Text(
                      body,
                      maxLines: maxLines,
                      overflow: TextOverflow.ellipsis,
                      style: Get.textTheme.headline2.copyWith(color: Colors.black.withOpacity(0.6), fontSize: 14.0),
                    ),
                  ),
                ),
                Flexible(
                  flex: footerFlex,
                  child: Container(
                    alignment: footerAlignment,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Read more",
                              style: Get.textTheme.button.copyWith(color: Colors.lightBlue),
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
