part of 'home_bloc.dart';

@freezed
@immutable
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @required ScrollController scrollController,
    @nullable BuiltList<Post> latestPosts,
    @nullable bool endOfLatestPosts,
    @nullable BuiltList<Taxonomy> categories,
    @nullable bool endOfCategories,
    @nullable BuiltList<Post> lastMonthPosts,
    @nullable bool endOfLastMonthPosts,
    @nullable ApiClientException failure,
    @nullable HomeEvent lastSink,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(scrollController: ScrollController(keepScrollOffset: true, debugLabel: "HomeScreenSV"));
}
