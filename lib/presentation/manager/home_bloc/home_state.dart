part of 'home_bloc.dart';

@freezed
@immutable
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @required ScrollController scrollController,
    @Default(false) bool isFetchingMore,
    @nullable BuiltList<Post> latestPosts,
    @nullable bool endOfLatestPosts,
    @nullable BuiltList<Taxonomy> categories,
    @nullable bool endOfCategories,
    @nullable BuiltList<Post> lastMonthPosts,
    @nullable bool endOfLastMonthPosts,
    @nullable ApiClientException failure,
    @nullable HomeEvent lastSink,
    @nullable BuiltList<Post> blackExPosts,
    @nullable bool endOfBlackExPosts,
    @nullable BuiltList<Post> entertainmentPosts,
    @nullable bool endOfEntertainmentPosts,
    @nullable Post featuredPost,
    @nullable BuiltList<Post> olderTrends,
    @nullable bool endOfOlderTrends,
    @nullable BuiltList<Post> beautyPosts,
    @nullable bool endOfBeautyPosts,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(scrollController: ScrollController(keepScrollOffset: true, debugLabel: "HomeScreenSV"));
}
