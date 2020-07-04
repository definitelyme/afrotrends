part of '../for_you_widget.dart';

class OlderPostsVerticalList extends StatefulWidget {
  @override
  _OlderPostsVerticalListState createState() => _OlderPostsVerticalListState();
}

class _OlderPostsVerticalListState extends State<OlderPostsVerticalList> with AutomaticKeepAliveClientMixin {
  HomeBloc _bloc;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // ignore: close_sinks
    _bloc = context.bloc<HomeBloc>();
  }

  int _calculateListItemCount() {
    if (_bloc.state.endOfLastMonthPosts != null) {
      if (_bloc.state.endOfLastMonthPosts) return _bloc.state.lastMonthPosts.length;
      return _bloc.state.lastMonthPosts.length + MkHelpers.lastMonthPostsPerPage;
    }
    return _bloc.state.lastMonthPosts.length;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      width: double.infinity,
      child: BlocBuilder<HomeBloc, HomeState>(builder: (_, state) {
        if (state.lastMonthPosts == null)
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
        return ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          controller: ScrollController(),
          itemCount: _calculateListItemCount() + 1,
          itemBuilder: (_, index) {
            var isEnd = _bloc?.state?.endOfLastMonthPosts ?? false;
            if (index == _calculateListItemCount()) {
              return Visibility(
                visible: !isEnd,
                child: Align(alignment: Alignment.center, child: MkCircularProgressIndicator()),
              );
            }
            return _lastMothPostsBuilder(_bloc.state.lastMonthPosts.elementAt(index));
          },
        );
      }),
    );
  }

  Widget _lastMothPostsBuilder(Post post) {
    String postTitle = parse(parse(post?.title?.rendered).body.text).documentElement.text;

    return Container(
      height: Get.height * 0.17,
      margin: EdgeInsets.only(bottom: Get.width * 0.03, right: Get.width * 0.04),
      child: Hero(
        tag: "last-month-${post.id}",
        child: Material(
          clipBehavior: Clip.hardEdge,
          type: MaterialType.transparency,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8.0),
          child: InkWell(
            onTap: () => navigateAndPush(
              routeName: PostDetailScreen.routeName,
//              arguments: ModelRouteArg(model: post, heroTag: "recent-${post.id}"),
            ),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: post.customField.categories
                              .take(2)
                              .map<Widget>(
                                (e) => Flexible(
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                                    child: Text(
                                      e.name,
                                      textScaleFactor: 0.8,
                                      style: Get.textTheme.bodyText1.copyWith(color: AtColors.accentColor.shade300, fontSize: 13.0),
                                    ),
                                    decoration: BoxDecoration(
                                      color: AtColors.accentColor.shade300.withAlpha(30),
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
                              text: "By ${post.customField.user.displayName}",
                              style: Get.textTheme.caption.copyWith(fontSize: 12.0),
                              children: [
                                TextSpan(text: " ∙ ", style: Get.textTheme.subtitle2.copyWith(fontWeight: FontWeight.bold)),
                                TextSpan(text: "${timeago.format(DateTime.parse(post.createdAt))}"),
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
