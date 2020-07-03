part of '../for_you_widget.dart';

class LatestNewsHorizontalList extends StatefulWidget {
  @override
  _LatestNewsHorizontalListState createState() => _LatestNewsHorizontalListState();
}

class _LatestNewsHorizontalListState extends State<LatestNewsHorizontalList> with AutomaticKeepAliveClientMixin {
  final ScrollController _scrollController = ScrollController(keepScrollOffset: true);
  HomeBloc _bloc;
  int _page = 1;

  @override
  bool get wantKeepAlive => true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // ignore: close_sinks
    _bloc = context.bloc<HomeBloc>();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    bool _handleOnScrollNotification(ScrollNotification notification) {
      if (notification is ScrollEndNotification && _scrollController.position.pixels == _scrollController.position.maxScrollExtent)
        _bloc.add(HomeEvent.fetchLatestPosts(
            queryBuilder: QueryBuilder(
          perPage: MkHelpers.latestPostsPerPage,
          page: ++_page,
          orderBy: PostOrder.date,
          before: today,
          after: MkHelpers.getDate(today.subtract(Duration(days: 7))),
        )));
      return false;
    }

    int _calculateListItemCount() {
      if (_bloc.state.endOfLatestPosts != null) {
        if (_bloc.state.endOfLatestPosts) return _bloc.state.latestPosts.length;
        return _bloc.state.latestPosts.length + MkHelpers.latestPostsPerPage;
      }
      return _bloc.state.latestPosts.length;
    }

    return Container(
      height: Get.height * 0.24,
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          print("Error => ${context.bloc<HomeBloc>()?.state?.failure?.message}");
        },
        builder: (_, state) {
          if (state.latestPosts == null)
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

          return NotificationListener<ScrollNotification>(
            onNotification: _handleOnScrollNotification,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              controller: _scrollController,
              shrinkWrap: true,
              physics: defaultScrollPhysics(),
              itemCount: _calculateListItemCount() + 1,
              itemBuilder: (_, index) {
                var isEndOfPosts = _bloc?.state?.endOfLatestPosts ?? false;
                if (index == _calculateListItemCount())
                  return Visibility(
                    visible: !isEndOfPosts,
                    child: Center(child: MkCircularProgressIndicator()),
                  );
                return _latestNewsBuilder(state.latestPosts.elementAt(index));
              },
            ),
          );
        },
      ),
    );
  }

  Widget _latestNewsBuilder(Post post) {
    String postTitle = parse(parse(post?.title?.rendered).body.text).documentElement.text;

    return Container(
      width: Get.width * 0.7,
      margin: EdgeInsets.only(right: Get.width * 0.04),
      child: Stack(
        fit: StackFit.expand,
        children: [
          CachedNetworkImage(
            imageUrl: post?.customField?.featuredImage?.first?.sourceUrl,
//            imageUrl: "http://via.placeholder.com/200x150",
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultCardRadius()),
                image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
              ),
            ),
            placeholder: (context, url) => Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(AtColors.accentColor.shade300),
              ),
            ),
            errorWidget: (context, url, error) => Icon(Icons.error, color: AtColors.accentColor),
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
              height: (Get.height * 0.25) * 0.6,
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03, vertical: Get.height * 0.015),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Flexible(
                    child: AutoSizeText(
                      postTitle,
                      style: Get.textTheme.subtitle1.copyWith(color: Colors.white),
                      maxLines: 4,
                      softWrap: true,
                      wrapWords: false,
                      minFontSize: 14.0,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
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
                  onTap: () => navigateAndPush(
                    routeName: PostDetailScreen.routeName,
//                    arguments: ModelRouteArg(model: post, heroTag: "latest-${post.id}"),
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
}
