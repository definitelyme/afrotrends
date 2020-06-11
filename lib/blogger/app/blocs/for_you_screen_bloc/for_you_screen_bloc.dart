import 'dart:async';

import 'package:afrotrends/blogger/core/failures/response_status.dart';
import 'package:afrotrends/blogger/domain/facades/facade.dart';
import 'package:afrotrends/blogger/infrastructure/wp_impl/category_facade_impl.dart';
import 'package:afrotrends/blogger/infrastructure/wp_impl/post_facade_impl.dart';
import 'package:afrotrends/core/service_container/locator.dart';
import 'package:bloc/bloc.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import './bloc.dart';

@Singleton()
class ForYouScreenBloc extends Bloc<ForYouScreenEvent, ForYouScreenState> {
  final PostFacade _postFacade;
  final CategoryFacade _categoryFacade;

  ForYouScreenBloc({@required PostFacade postFacade, @required CategoryFacade categoryFacade})
      : _postFacade = postFacade,
        _categoryFacade = categoryFacade,
        assert(postFacade != null),
        assert(categoryFacade != null);

  @override
  ForYouScreenState get initialState => ForYouScreenState.initial();

  @override
  Stream<ForYouScreenState> mapEventToState(
    ForYouScreenEvent event,
  ) async* {
    // ?categories=12&filter[orderby]=date&order=asc
//    posts?filter[orderby]=date&order=desc&per_page=3
//  posts?orderby=date&order=desc&per_page=6
//    orderby=count&order=desc&per_page=6
    DataConnectionChecker connectionChecker = getIt<DataConnectionChecker>();
    yield state.copyWith(nextPageIsLoading: true);

    yield* event.map(
      getCategories: (e) async* {
        var filter = "orderby=count&order=desc&"; //  Order by Post "count"
        if (await connectionChecker.hasConnection) {
          var categories = await _categoryFacade.all(RequestArg(perPage: 15), optional: filter);
          yield state.copyWith(
            hasFailure: categories.isLeft(),
            failureMessage: categories.fold((l) => (l as ResponseStatus).message, (r) => null),
            categories: categories.fold((l) => [], (r) => r),
          );
        }
      },
      getLatestNews: (e) async* {
        var filter = "orderby=date&order=desc&";
        if (await connectionChecker.hasConnection) {
          var latestPosts = await _postFacade.all(RequestArg(perPage: 5), optional: filter);
          yield state.copyWith(
            hasFailure: latestPosts.isLeft(),
            failureMessage: latestPosts.fold((l) => (l as ResponseStatus).message, (r) => null),
            latestNews: latestPosts.fold((l) => [], (r) {
              if (state.latestNews.isEmpty) return r;
              return state.latestNews;
            }),
            nextPageIsLoading: false,
            postsCount: latestPosts.fold((l) => state.postsCount, (r) => r.elementAt(0).count),
            postTotalPages: latestPosts.fold((l) => state.postTotalPages, (r) => r.elementAt(0).totalPages),
          );
        }
      },
      appendLatestNews: (e) async* {
        var filter = "orderby=date&order=desc&";

        if (await connectionChecker.hasConnection && e.nextPage <= state.postsCount) {
          var latestPosts = await _postFacade.all(RequestArg(perPage: 5, page: e.nextPage), optional: filter);
          yield state.copyWith(
            hasFailure: latestPosts.isLeft(),
            failureMessage: latestPosts.fold((l) => (l as ResponseStatus).message, (r) => null),
            latestNews: latestPosts.fold((l) => [], (r) {
              if (state.latestNews.isNotEmpty && state.latestNews.elementAt(0) == r.elementAt(0))
                return state.latestNews;
              else
                return state.latestNews.followedBy(r).toList();
            }),
            pagesCount: e.nextPage,
            nextPageIsLoading: false,
            // Total no of posts returned
            postsCount: latestPosts.fold((l) => state.postsCount, (r) => r.elementAt(0).count),
            postTotalPages: latestPosts.fold((l) => state.postTotalPages, (r) => r.elementAt(0).totalPages),
          );
        }
      },
    );
  }
}
