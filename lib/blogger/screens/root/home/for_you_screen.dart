import 'package:afrotrends/blogger/app/blocs/for_you_screen_bloc/bloc.dart';
import 'package:afrotrends/blogger/domain/entities/category.dart';
import 'package:afrotrends/blogger/domain/entities/post.dart';
import 'package:afrotrends/blogger/domain/routeArgs/model_route_arg.dart';
import 'package:afrotrends/blogger/screens/post_screen.dart';
import 'package:afrotrends/core/navigator.dart';
import 'package:afrotrends/core/shimmers/rectangle_shimmer.dart';
import 'package:afrotrends/core/shimmers/shimmer_bottom_content.dart';
import 'package:afrotrends/core/shimmers/shimmer_right_content.dart';
import 'package:afrotrends/core/utils/app_colors.dart';
import 'package:afrotrends/core/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:html/parser.dart';
import 'package:intl/intl.dart';

class ForYouScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    var bloc = BlocProvider.of<ForYouScreenBloc>(context);
    
    return ListView(
      key: ValueKey("for-you-listView"),
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
                style: Get.textTheme.bodyText1.copyWith(color: AppColors.oylexAccent.shade300),
              ),
            ],
          ),
        ),
        SizedBox(height: Get.height * 0.02),
        Container(
          height: Get.height * 0.24,
          child: StreamBuilder<ForYouScreenState>(
              stream: bloc,
              builder: (context, snapshot) {
                if (snapshot.data == null || snapshot.data.latestNews == [] || snapshot.data.latestNews.isEmpty)
                  return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: ((Get.width) / (Get.width * 0.3)).ceil(),
                      itemBuilder: (context, index) {
                        return ShimmerBottomContent(
                          width: Get.width * 0.7,
                          shimmerBaseColor: Colors.grey[300],
                          shimmerHighlightColor: Colors.grey[100],
                          margin: EdgeInsets.only(right: Get.width * 0.06),
                          boxColor: Colors.black,
                          borderRadius: 8.0,
                        );
                      });

                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: snapshot.data.horizontalPostsController,
                  shrinkWrap: true,
                  physics: defaultScrollPhysics(),
                  itemCount: snapshot.data.latestNews.length,
                  itemBuilder: (_, index) => _latestNewsBuilder(snapshot.data.latestNews.elementAt(index)),
                );
              }),
        ),
        SizedBox(height: Get.height * 0.04),
        Container(
          padding: EdgeInsets.only(right: deviceMargin(context)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("POPULAR TOPICS", style: Get.textTheme.subtitle1.copyWith(color: Colors.grey, fontSize: 15.0, fontWeight: FontWeight.w500)),
            ],
          ),
        ),
        SizedBox(height: Get.height * 0.01),
        Container(
          height: Get.height * 0.16,
          child: StreamBuilder<ForYouScreenState>(
              stream: bloc,
              builder: (context, snapshot) {
                if (snapshot.data == null || snapshot.data.categories == [] || snapshot.data.categories.isEmpty)
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: ((Get.width) / (Get.width * 0.3)).ceil(),
                    itemBuilder: (context, index) {
                      return RectangleShimmer(
                        width: Get.width * 0.3,
                        height: Get.height * 0.16,
                        margin: EdgeInsets.only(right: Get.width * 0.04),
                        shimmerBaseColor: Colors.grey[300],
                        shimmerHighlightColor: Colors.grey[100],
                        boxColor: Colors.black,
                        borderRadius: 8.0,
                      );
                    },
                  );

                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: snapshot.data.categoriesController,
                  shrinkWrap: true,
                  physics: defaultScrollPhysics(),
                  itemCount: snapshot.data.categories.length,
                  itemBuilder: (context, index) => _popularTopicsBuilder(snapshot.data.categories.elementAt(index)),
                );
              }),
        ),
        SizedBox(height: Get.height * 0.04),
        Container(
          padding: EdgeInsets.only(right: deviceMargin(context)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("TRENDING", style: Get.textTheme.subtitle1.copyWith(color: Colors.grey, fontSize: 15.0, fontWeight: FontWeight.w500)),
            ],
          ),
        ),
        SizedBox(height: Get.height * 0.01),
        Container(
          width: double.infinity,
          child: StreamBuilder<ForYouScreenState>(
              stream: bloc,
              builder: (context, snapshot) {
                if (snapshot.data == null || snapshot.data.latestNews == [] || snapshot.data.latestNews.isEmpty)
                  return ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: defaultScrollPhysics(),
                    itemCount: ((Get.width) / (Get.width * 0.3)).ceil(),
                    itemBuilder: (context, index) => ShimmerRightContent(
                      width: Get.width,
                      height: Get.height * 0.17,
                      margin: EdgeInsets.only(bottom: Get.width * 0.03, right: Get.width * 0.04),
                      shimmerBaseColor: Colors.grey[300],
                      shimmerHighlightColor: Colors.grey[100],
                      boxColor: Colors.black,
                      borderRadius: 8.0,
                    ),
                  );

                var posts = snapshot.data.latestNews.getRange(3, snapshot.data.latestNews.length);

                return ListView.builder(
                  scrollDirection: Axis.vertical,
                  controller: snapshot.data.verticalPostsController,
                  shrinkWrap: true,
                  physics: defaultScrollPhysics(),
                  itemCount: posts.length,
                  itemBuilder: (_, index) => _recentSearchedBuilder(posts.elementAt(index)),
                );
              }),
        ),
        SizedBox(height: 10.0),
        BlocBuilder<ForYouScreenBloc, ForYouScreenState>(
          builder: (context, state){
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Visibility(
                  visible: bloc.state.nextPageIsLoading || bloc.state.latestNews == [] || bloc.state.latestNews.isEmpty,
                  replacement: RaisedButton(
                    onPressed: () => bloc.add(
                      ForYouScreenEvent.appendLatestNews(
                        nextPage: bloc.state.pagesCount + 1,
                      ),
                    ),
                    child: Text(
                      "Load more..",
                      style: Get.textTheme.button.copyWith(color: Colors.white),
                    ),
                    elevation: 0.0,
                    highlightElevation: 1.0,
                    color: AppColors.oylexAccent.shade400,
                    highlightColor: Colors.white12,
                    splashColor: Colors.white30,
                    shape: StadiumBorder(),
                  ),
                  child: Center(child: CircularProgressIndicator()),
                ),
              ],
            );
          },
        ),
        SizedBox(height: 10.0),
      ],
    );
  }

  Widget _latestNewsBuilder(Post post) {
//    var test_key = ValueKey("latest-${post.id}");
//    if (posts.elementAt(0) == post) test_key = ValueKey("latest-post-single-item-key");

    String postTitle = parse(parse(post?.title).body.text).documentElement.text;

    return Container(
      width: Get.width * 0.7,
      margin: EdgeInsets.only(right: Get.width * 0.06),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.circular(defaultCardRadius()),
            child: Image(
              image: NetworkImage("${post.media.sourceUrl}"),
              fit: BoxFit.cover,
            ),
          ),
          ClipRRect(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.circular(defaultCardRadius()),
            child: Container(
              decoration: BoxDecoration(color: Colors.black87.withAlpha(70)),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03, vertical: Get.height * 0.015),
              child: Text(
                postTitle,
                style: Get.textTheme.subtitle1.copyWith(color: Colors.white),
                maxLines: 3,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          ClipRRect(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.circular(defaultCardRadius()),
            child: Hero(
              tag: "latest-${post.id}",
              child: Material(
                type: MaterialType.transparency,
                color: Colors.transparent,
                child: InkWell(
//                  key: test_key,
                  onTap: () => navigateAndPush(
                    routeName: PostScreen.routeName,
                    arguments: ModelRouteArg(model: post, heroTag: "latest-${post.id}"),
                  ),
                  child: Container(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _popularTopicsBuilder(PostCategory topic) {
//    var test_key = ValueKey("topic-${topic.id}");
//    if (topics.elementAt(1) == topic) test_key = ValueKey("topic-sports");

    return Container(
      width: Get.width * 0.3,
      margin: EdgeInsets.only(right: Get.width * 0.03),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.circular(8.0),
            child: Image(
              image: AssetImage("${topic.media.sourceUrl}"),
              fit: BoxFit.cover,
            ),
          ),
          ClipRRect(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.circular(8.0),
            child: Container(
              decoration: BoxDecoration(color: Colors.black87.withAlpha(30)),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03, vertical: Get.height * 0.015),
              child: Text(
                topic.name,
                style: Get.textTheme.subtitle1.copyWith(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          ClipRRect(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.circular(8.0),
            child: Material(
              type: MaterialType.transparency,
              color: Colors.transparent,
              child: InkWell(
//                key: test_key,
                onTap: () {
//                  print("$test_key");
                },
                child: Container(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _recentSearchedBuilder(Post post) {
    String postTitle = parse(parse(post?.title).body.text).documentElement.text;

    return Container(
      height: Get.height * 0.17,
      margin: EdgeInsets.only(bottom: Get.width * 0.03, right: Get.width * 0.04),
      child: Hero(
        tag: "recent-${post.id}",
        child: Material(
          clipBehavior: Clip.hardEdge,
          type: MaterialType.transparency,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8.0),
          child: InkWell(
            onTap: () => navigateAndPush(
              routeName: PostScreen.routeName,
              arguments: ModelRouteArg(model: post, heroTag: "recent-${post.id}"),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Flexible(
                  flex: 6,
                  child: ClipRRect(
                    clipBehavior: Clip.hardEdge,
                    borderRadius: BorderRadius.circular(8.0),
                    child: Container(
                      width: double.maxFinite,
                      child: Image(
                        image: NetworkImage("${post.media.sourceUrl}"),
                        fit: BoxFit.cover,
                      ),
                    ),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: post.categories
                              .take(2)
                              .map<Widget>(
                                (e) => Flexible(
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                                    child: Text(
                                      e.name,
                                      textScaleFactor: 0.8,
                                      style: Get.textTheme.bodyText1.copyWith(color: AppColors.oylexAccent.shade100, fontSize: 13.0),
                                    ),
                                    decoration: BoxDecoration(
                                      color: AppColors.oylexAccent.shade100.withAlpha(30),
                                      borderRadius: BorderRadius.circular(defaultCardRadius()),
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                        Container(
                          child: Text(
                            postTitle,
                            maxLines: 2,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            style: Get.textTheme.bodyText1.copyWith(fontSize: 16.0),
                          ),
                        ),
                        Container(
                          child: RichText(
                            text: TextSpan(
                              text: "By ${post.author.name}",
                              style: Get.textTheme.caption.copyWith(fontSize: 12.0),
                              children: [
                                TextSpan(text: " ∙ ", style: Get.textTheme.subtitle2.copyWith(fontWeight: FontWeight.bold)),
                                TextSpan(text: "${post.createdAt}"),
                              ],
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
