part of '../for_you_widget.dart';

class PopularTopicsHorizontalList extends StatefulWidget {
  @override
  _PopularTopicsHorizontalListState createState() => _PopularTopicsHorizontalListState();
}

class _PopularTopicsHorizontalListState extends State<PopularTopicsHorizontalList> with AutomaticKeepAliveClientMixin {
  static const List<String> _IMAGES = [
    "beauty",
    "black_excellence",
    "celebrity",
    "fashion",
    "music",
    "news",
    "our_people",
    "entertainment",
    "politics",
    "sports",
    "viral_trends",
  ];
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

  bool _handleOnScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification && _scrollController.position.pixels == _scrollController.position.maxScrollExtent)
      _bloc.add(HomeEvent.fetchCategories(
          queryBuilder: QueryBuilder(
        page: ++_page,
        perPage: MkHelpers.categoriesPerPage,
        orderBy: CategoryOrder.count,
        sortBy: SortBy.desc,
      )));
    return false;
  }

  int _calculateListItemCount() {
    if (_bloc.state.endOfCategories != null) {
      if (_bloc.state.endOfCategories) return _bloc.state.categories.length;
      return _bloc.state.categories.length + MkHelpers.categoriesPerPage;
    }
    return _bloc.state.categories.length;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      height: Get.height * 0.16,
      child: BlocBuilder<HomeBloc, HomeState>(builder: (_, state) {
        if (state.categories == null)
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
              });
        return NotificationListener<ScrollEndNotification>(
          onNotification: _handleOnScrollNotification,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            controller: _scrollController,
            shrinkWrap: true,
            physics: defaultScrollPhysics(),
            itemCount: _calculateListItemCount() + 1,
            itemBuilder: (_, index) {
              var isEndOfCategories = _bloc?.state?.endOfCategories ?? false;
              if (index == _calculateListItemCount())
                return Visibility(
                  visible: !isEndOfCategories,
                  child: Container(
                    margin: const EdgeInsets.only(right: 12.0),
                    child: Center(child: CupertinoActivityIndicator()),
                  ),
                );
              return _categoriesBuilder(state.categories.elementAt(index));
            },
          ),
        );
      }),
    );
  }

  Widget _categoriesBuilder(Taxonomy category) {
//    print("${category.name} =>> ${category.count}");
    String image = _IMAGES.contains(Slugify(category.name, delimiter: "_")) ? Slugify(category.name, delimiter: "_") : "default";

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
              image: AssetImage("$CATEGORIES_IMAGES_FOLDER/$image.jpg"),
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
                category.name,
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
                onTap: () => navigateToCategoryDetail(category),
                child: Container(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
