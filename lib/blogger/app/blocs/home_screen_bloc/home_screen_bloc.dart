import 'dart:async';

import 'package:afrotrends/blogger/core/failures/failure.dart';
import 'package:afrotrends/blogger/core/failures/response_status.dart';
import 'package:afrotrends/blogger/domain/entities/post.dart';
import 'package:afrotrends/blogger/domain/facades/facade.dart';
import 'package:afrotrends/blogger/infrastructure/wp_impl/category_facade_impl.dart';
import 'package:afrotrends/blogger/infrastructure/wp_impl/post_facade_impl.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import './bloc.dart';

@injectable
class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  final PostFacade _postFacade;
  final CategoryFacade _categoryFacade;

  HomeScreenBloc({@required PostFacade postFacade, @required CategoryFacade categoryFacade})
      : _postFacade = postFacade,
        _categoryFacade = categoryFacade,
        assert(postFacade != null),
        assert(categoryFacade != null);

  @override
  HomeScreenState get initialState => HomeScreenState.initial();

  @override
  Stream<HomeScreenState> mapEventToState(
    HomeScreenEvent event,
  ) async* {
    yield* event.map(
      getTopStories: (e) async* {},
      getPostsForThisWeek: (e) async* {
        yield state.copyWith(isInit: false);

        String filter = getURLForThisWeekPosts(e.item);
        var posts = await _postFacade.all(RequestArg(perPage: 30), optional: filter);
        yield* mapThisWeekPosts(e.item, posts);
      },
      getOlderPosts: (e) async* {
        yield state.copyWith(isInit: false);

        String filter = getURLForOlderPosts(e.item);
        print("URLs => $filter");
        var posts = await _postFacade.all(RequestArg(perPage: 40), optional: filter);
        yield* mapOlderPosts(e.item, posts);
      },
    );
  }

  String getURLForThisWeekPosts(String listItem) {
    final date = DateTime.now();
    DateTime getDate(DateTime d) => DateTime(d.year, d.month, d.day);

    var startOfWeek = getDate(date.subtract(Duration(days: date.weekday - 1))).toIso8601String();
    var endOfWeek = getDate(date.add(Duration(days: DateTime.daysPerWeek - date.weekday))).toIso8601String();
//    var today = date.toIso8601String();

    if (listItem.contains("Trends")) return "categories=23&after=$startOfWeek&before=$endOfWeek&";
    if (listItem.contains("Entertainment")) return "categories=5&categories=10&after=$startOfWeek&before=$endOfWeek&";
    if (listItem.contains("Stories")) return "categories=11&after=$startOfWeek&before=$endOfWeek&";
    if (listItem.contains("Beauty"))
      return "categories=3&categories=2&after=$startOfWeek&before=$endOfWeek&";
    else
      return "after=$startOfWeek&before=$endOfWeek&";
  }

  String getURLForOlderPosts(String listItem) {
    final date = DateTime.now();
    DateTime getDate(DateTime d) => DateTime(d.year, d.month, d.day);
    print("Item => $listItem");

    var startOfWeek = getDate(date.subtract(Duration(days: date.weekday - 1))).toIso8601String();
//    var endOfWeek = getDate(date.add(Duration(days: DateTime.daysPerWeek - date.weekday))).toIso8601String();
//    var today = date.toIso8601String();

    if (listItem.contains("Trends")) return "categories=23&before=$startOfWeek&";
    if (listItem.contains("Entertainment")) return "categories=5&categories=10&before=$startOfWeek&";
    if (listItem.contains("Stories")) return "categories=11&before=$startOfWeek&";
    if (listItem.contains("Beauty"))
      return "categories=3&categories=2&before=$startOfWeek&";
    else
      return "before=$startOfWeek&";
  }

  Stream<HomeScreenState> mapThisWeekPosts(String item, Either<Failure, List<Post>> eitherPosts) async* {
    yield state.copyWith(
      isInit: false,
      hasFailure: eitherPosts.isLeft(),
      failureMessage: eitherPosts.fold((l) => (l as ResponseStatus).message, (r) => null),
    );

    if (item.contains("Trends")) yield state.copyWith(isInit: false, viralTrends: eitherPosts.fold((l) => [], (r) => r));
    if (item.contains("Entertainment")) yield state.copyWith(isInit: false, entertainment: eitherPosts.fold((l) => [], (r) => r));
    if (item.contains("Stories")) yield state.copyWith(isInit: false, topStories: eitherPosts.fold((l) => [], (r) => r));
    if (item.contains("Beauty")) yield state.copyWith(isInit: false, beauty: eitherPosts.fold((l) => [], (r) => r));
  }

  Stream<HomeScreenState> mapOlderPosts(String item, Either<Failure, List<Post>> eitherPosts) async* {
    yield state.copyWith(
      isInit: false,
      hasFailure: eitherPosts.isLeft(),
      failureMessage: eitherPosts.fold((l) => (l as ResponseStatus).message, (r) => null),
    );

    if (item.contains("Trends")) yield state.copyWith(isInit: false, olderViralTrends: eitherPosts.fold((l) => [], (r) => r));
    if (item.contains("Entertainment")) yield state.copyWith(isInit: false, olderEntertainments: eitherPosts.fold((l) => [], (r) => r));
    if (item.contains("Stories")) yield state.copyWith(isInit: false, olderTopStories: eitherPosts.fold((l) => [], (r) => r));
    if (item.contains("Beauty")) yield state.copyWith(isInit: false, olderBeauty: eitherPosts.fold((l) => [], (r) => r));
  }
}
