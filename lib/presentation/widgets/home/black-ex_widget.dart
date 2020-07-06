import 'package:admob_flutter/admob_flutter.dart';
import 'package:afrotrends/features/data/remote/models/post/exports.dart';
import 'package:afrotrends/features/domain/api_client/exports.dart';
import 'package:afrotrends/presentation/manager/home_bloc/home_bloc.dart';
import 'package:afrotrends/utils/ads.dart';
import 'package:afrotrends/utils/colors.dart';
import 'package:afrotrends/utils/helpers.dart';
import 'package:afrotrends/widgets/horizontal_list.dart';
import 'package:afrotrends/widgets/shimmers/shimmer_right_content.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:html/parser.dart';
import 'package:slugify/slugify.dart';

class BlackExcellenceWidget extends StatefulWidget {
  static final _id = 3;
  static final name = "Black Excellence";

  @override
  _BlackExcellenceWidgetState createState() => _BlackExcellenceWidgetState();
}

class _BlackExcellenceWidgetState extends State<BlackExcellenceWidget> with AutomaticKeepAliveClientMixin {
  HomeBloc _bloc;
  int page = 1;

  @override
  bool get wantKeepAlive => true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _bloc = BlocProvider.of<HomeBloc>(context);
    if (_bloc.state.blackExPosts == null)
      _bloc.add(HomeEvent.fetchBlackExPosts(
        queryBuilder: QueryBuilder(taxonomy: TCategory(BlackExcellenceWidget._id), perPage: MkHelpers.blackExPerPage),
      ));
  }

  int _calculateListItemCount() {
    var olderPosts = _bloc.state.blackExPosts.skip(5).toBuiltList();

    if (_bloc.state.endOfBlackExPosts != null) {
      if (_bloc.state.endOfBlackExPosts) return olderPosts.length;
      return olderPosts.length + MkHelpers.blackExPerPage;
    }
    return olderPosts.length;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return ListView(
      children: [
        BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
          if (_bloc.state.blackExPosts == null) {
            return Container(
              height: Get.height * 0.3,
              child: Align(alignment: Alignment.center, child: CupertinoActivityIndicator()),
            );
          }

          var topPosts = _bloc.state.blackExPosts.take(5).toBuiltList();

          return CarouselSlider.builder(
            options: CarouselOptions(
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              pageViewKey: PageStorageKey(Slugify(BlackExcellenceWidget.name, delimiter: "_")),
            ),
            itemCount: topPosts.length,
            itemBuilder: (_, index) => _buildCarouselPosts(topPosts.elementAt(index)),
          );
        }),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: deviceMargin(context)),
          child: AdmobBanner(
            adUnitId: AfrotrendsAds.getBannerAdUnitId(),
            adSize: AdmobBannerSize.BANNER,
          ),
        ),
        SizedBox(height: Get.height * 0.02),
        Container(
          padding: EdgeInsets.symmetric(horizontal: deviceMargin(context)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("OLDER POSTS",
                  style: Get.textTheme.subtitle1.copyWith(
                    color: Colors.black54,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  )),
            ],
          ),
        ),
        SizedBox(height: Get.height * 0.02),
        BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
          if (_bloc.state.blackExPosts == null)
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

          var olderPosts = _bloc.state.blackExPosts.skip(5).toBuiltList();

          return ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            padding: defaultEdgeSpacing(context, right: 0.0),
            physics: defaultScrollPhysics(),
            itemCount: _calculateListItemCount() + 1,
            itemBuilder: (_, index) {
              if (index == _calculateListItemCount()) return _loadMoreButton(_bloc?.state?.endOfBlackExPosts ?? false);
              return AtHorizontalCard(post: olderPosts.elementAt(index), tagPrefix: "black-ex");
            },
          );
        }),
        Padding(
          padding: EdgeInsets.all(deviceMargin(context)),
          child: AdmobBanner(
            adUnitId: AfrotrendsAds.getBannerAdUnitId(),
            adSize: AdmobBannerSize.FULL_BANNER,
          ),
        ),
      ],
    );
  }

  Widget _buildCarouselPosts(Post post) => Container(
        child: Hero(
          tag: "carousel-post-${post.id}",
          child: InkWell(
            onTap: () => navigateToPostDetail("carousel-post-${post.id}", post),
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      CachedNetworkImage(
                        imageUrl: post?.customField?.featuredImage?.first?.sourceUrl,
                        imageBuilder: (context, imageProvider) => Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
                          ),
                        ),
                        placeholder: (context, url) => Center(child: CupertinoActivityIndicator()),
                        errorWidget: (context, url, error) => Icon(Icons.error, color: AtColors.accentColor),
                      ),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color.fromARGB(200, 0, 0, 0), Color.fromARGB(0, 0, 0, 0)],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                          child: AutoSizeText(
                            parse(parse(post?.title?.rendered).body.text).documentElement.text,
                            style: Get.textTheme.bodyText1.copyWith(color: Colors.white),
                            maxLines: 2,
                            minFontSize: 15,
                            softWrap: true,
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ),
      );

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
            onPressed: () {
              _bloc.add(HomeEvent.fetchBlackExPosts(
                queryBuilder: QueryBuilder(
                  taxonomy: TCategory(BlackExcellenceWidget._id),
                  perPage: MkHelpers.blackExPerPage,
                  page: ++page,
                ),
              ));
            },
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
