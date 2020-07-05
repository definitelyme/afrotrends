import 'package:afrotrends/features/data/remote/models/post/exports.dart';
import 'package:afrotrends/features/domain/api_client/exports.dart';
import 'package:afrotrends/presentation/manager/home_bloc/home_bloc.dart';
import 'package:afrotrends/utils/colors.dart';
import 'package:afrotrends/utils/helpers.dart';
import 'package:afrotrends/widgets/shimmers/shimmer_right_content.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:html/parser.dart';
import 'package:timeago/timeago.dart' as timeago;

class ViralTrendsWidget extends StatefulWidget {
  static final _id = 23;
  static final name = "Viral Trends";

  @override
  _ViralTrendsWidgetState createState() => _ViralTrendsWidgetState();
}

class _ViralTrendsWidgetState extends State<ViralTrendsWidget> with AutomaticKeepAliveClientMixin {
  HomeBloc _bloc;
  int _page = 1;

  @override
  bool get wantKeepAlive => true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _bloc = BlocProvider.of<HomeBloc>(context);
    if (_bloc.state.olderTrends == null)
      _bloc.add(HomeEvent.fetchOldTrends(
          queryBuilder: QueryBuilder(
        taxonomy: TCategory(ViralTrendsWidget._id),
        perPage: MkHelpers.trendsPerPage,
      )));
  }

  int _calculateListItemCount() {
    var olderTrends = _bloc.state.olderTrends.skip(1).toList();

    if (_bloc.state.endOfOlderTrends != null) {
      if (_bloc.state.endOfOlderTrends) return olderTrends.length;
      return olderTrends.length + MkHelpers.trendsPerPage;
    }
    return olderTrends.length;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return ListView(
      children: [
        BlocBuilder<HomeBloc, HomeState>(builder: (_, state) {
          if (_bloc.state.olderTrends == null) return CupertinoActivityIndicator();

          var featured = _bloc.state.olderTrends.elementAt(0);

          return _buildFeaturedPost(featured);
        }),
        SizedBox(height: Get.height * 0.04),
        Container(
          padding: EdgeInsets.symmetric(horizontal: deviceMargin(context)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("THIS WEEK", style: Get.textTheme.subtitle1.copyWith(color: Colors.grey, fontSize: 15.0, fontWeight: FontWeight.w500)),
            ],
          ),
        ),
        SizedBox(height: Get.height * 0.02),
        BlocBuilder<HomeBloc, HomeState>(builder: (_, state) {
          if (_bloc.state.olderTrends == null)
            return ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: defaultEdgeSpacing(context),
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

          var olderTrends = _bloc.state.olderTrends.skip(1).toList();

          return ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            padding: defaultEdgeSpacing(context),
            physics: defaultScrollPhysics(),
            itemCount: _calculateListItemCount() + 1,
            itemBuilder: (_, index) {
              if (index == _calculateListItemCount()) return _loadMoreButton(_bloc?.state?.endOfOlderTrends ?? false);
              return _trendsBuilder(olderTrends.elementAt(index));
            },
          );
        }),
      ],
    );
  }

  Widget _buildFeaturedPost(Post post) {
    String postTitle = parse(parse(post?.title?.rendered).body.text).documentElement.text;
    String postContent = parse(parse(post?.content?.rendered).body.text).documentElement.text;

    return Hero(
      tag: "featured-post-${post.id}",
      child: Container(
        height: Get.height * 0.3,
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.01),
        child: ClipRRect(
          borderRadius: BorderRadius.only(topRight: Radius.circular(12.0), bottomRight: Radius.circular(12.0)),
          child: InkWell(
            onTap: () => navigateToPostDetail("featured-post-${post.id}", post),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AutoSizeText(
                          post?.customField?.categories?.elementAt(0)?.name,
                          softWrap: true,
                          maxLines: 1,
                          maxFontSize: 15.0,
                          textAlign: TextAlign.center,
                          wrapWords: true,
                          style: Get.textTheme.headline4.copyWith(color: Colors.black26),
                        ),
                        SizedBox(height: 8.0),
                        AutoSizeText(
                          postTitle,
                          maxLines: 3,
                          minFontSize: 15.0,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          wrapWords: true,
                          style: Get.textTheme.headline2.copyWith(color: Colors.black87, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8.0),
                        AutoSizeText(
                          postContent,
                          maxLines: 4,
                          softWrap: true,
                          textAlign: TextAlign.center,
                          wrapWords: true,
                          overflow: TextOverflow.ellipsis,
                          style: Get.textTheme.subtitle1.copyWith(color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: CachedNetworkImage(
                    imageUrl: post?.customField?.featuredImage?.elementAt(0)?.sourceUrl,
                    imageBuilder: (context, imageProvider) => Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(12.0), bottomRight: Radius.circular(12.0)),
                        image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
                      ),
                    ),
                    placeholder: (context, url) => Center(
                      child: CupertinoActivityIndicator(),
                    ),
                    errorWidget: (context, url, error) => Icon(Icons.error, color: AtColors.accentColor),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _trendsBuilder(Post post) {
    String postTitle = parse(parse(post?.title?.rendered).body.text).documentElement.text;

    return Container(
      height: Get.height * 0.17,
      margin: EdgeInsets.only(bottom: Get.width * 0.03, right: Get.width * 0.04),
      child: Hero(
        tag: "v-trends-${post.id}",
        child: Material(
          clipBehavior: Clip.hardEdge,
          type: MaterialType.transparency,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8.0),
          child: InkWell(
            onTap: () => navigateToPostDetail("v-trends-${post.id}", post),
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
                          flex: 2,
                          child: Container(
                            child: Text(
                              postTitle,
                              maxLines: 2,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              style: Get.textTheme.bodyText1.copyWith(fontSize: 16.0),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
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

  Widget _loadMoreButton(bool isAtMax) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: Get.width * 0.08),
        Visibility(
          visible: _bloc.state.isFetchingMore,
          child: CupertinoActivityIndicator(),
        ),
        SizedBox(width: Get.width * 0.05),
        Visibility(
          visible: !isAtMax && !_bloc.state.isFetchingMore,
          child: RaisedButton(
            onPressed: () => _bloc.add(HomeEvent.fetchOldTrends(
                queryBuilder: QueryBuilder(
              taxonomy: TCategory(ViralTrendsWidget._id),
              perPage: MkHelpers.trendsPerPage,
              page: ++_page,
            ))),
            child: Text(
              "Load more..",
              style: Get.textTheme.button.copyWith(color: Colors.white),
            ),
            elevation: 0.0,
            highlightElevation: 1.0,
            color: AtColors.accentColor.shade400,
            highlightColor: Colors.white12,
            splashColor: Colors.white30,
            shape: StadiumBorder(),
          ),
        ),
      ],
    );
  }
}
