import 'dart:async';
import 'dart:io';

import 'package:afrotrends/features/data/client/dio/dio_client_exception.dart';
import 'package:afrotrends/features/data/remote/models/post/exports.dart';
import 'package:afrotrends/features/data/remote/models/taxonomy/exports_taxonomy.dart';
import 'package:afrotrends/features/data/repositories/category_repository.dart';
import 'package:afrotrends/features/data/repositories/exports.dart';
import 'package:afrotrends/features/domain/api_client/exports.dart';
import 'package:afrotrends/features/domain/entities/failure.dart';
import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:retry/retry.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

typedef RepoCaller<T> = Future<T> Function({QueryBuilder query});

@Injectable()
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final PostRepository _postRepository;
  final CategoryRepository _categoryRepository;
  final RetryOptions _r;

  void dispatchLatestPostEvent(QueryBuilder query) {
    add(HomeEvent.fetchLatestPosts(queryBuilder: query));
  }

  void dispatchCategoriesEvent(QueryBuilder query) {
    add(HomeEvent.fetchCategories(queryBuilder: query));
  }

  void dispatchLastMonthPostsEvent(QueryBuilder query) {
    add(HomeEvent.fetchLastMonthPosts(queryBuilder: query));
  }

  void _dispatchTimeoutException({Failure failure, HomeEvent ev}) {
    add(HomeEvent.sendTimeoutException(failure: failure, sink: ev));
  }

  HomeBloc(PostRepository postRepository, RetryOptions retryOptions, this._categoryRepository)
      : assert(postRepository != null),
        assert(_categoryRepository != null),
        _postRepository = postRepository,
        _r = retryOptions,
        super(HomeState.initial());

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    yield state.copyWith(failure: null, isFetchingMore: true);

    yield* event.map(
      fetchLatestPosts: (e) async* {
        yield* mapLatestPosts(e);
      },
      fetchCategories: (e) async* {
        yield* mapCategories(e);
      },
      fetchLastMonthPosts: (e) async* {
        yield* mapLastMonthPosts(e);
      },
      sendTimeoutException: (e) async* {
        yield state.copyWith(
          failure: (e.failure as ApiClientException),
          lastSink: e.sink,
          isFetchingMore: false,
        );
      },
      fetchBlackExPosts: (e) async* {
        yield* mapBlackExPosts(e);
      },
      fetchEntertainments: (e) async* {
        yield* mapEntertainments(e);
      },
      fetchFeaturedPost: (e) async* {
        yield* mapFeaturedPost(e);
      },
      fetchOldTrends: (e) async* {
        yield* mapOldTrends(e);
      },
      fetchBeautyPosts: (e) async* {
        yield* mapBeautyPosts(e);
      },
    );
  }

  Stream<HomeState> mapLatestPosts(_FetchLatestPosts e) async* {
    QueryBuilder query = e.queryBuilder;
    try {
      final posts = await _postRepository.fetchLatestPosts(query: query);
      yield state.copyWith(
          latestPosts: ((state.latestPosts != null) && state.latestPosts.last != posts?.items?.last)
              ? state.latestPosts + posts?.items
              : state.latestPosts ?? posts?.items,
          isFetchingMore: false);
    } on DioClientException catch (e) {
      yield state.copyWith(endOfLatestPosts: e.code == API_ERROR_CODE.NO_MORE_ITEMS, isFetchingMore: false);
    } on DioError catch (e) {
      notifyNoInternet(e, lastSink: HomeEvent.fetchLatestPosts(queryBuilder: query));
    }
  }

  Stream<HomeState> mapCategories(_FetchCategories e) async* {
    QueryBuilder query = e.queryBuilder;
    try {
      final categories = await _categoryRepository.fetchCategoriesForHome(query: query);
      yield state.copyWith(
          categories: ((state.categories != null) && state.categories.last != categories?.items?.last)
              ? state.categories + categories?.items
              : state.categories ?? categories?.items,
          isFetchingMore: false);
    } on DioClientException catch (e) {
      yield state.copyWith(endOfCategories: e.code == API_ERROR_CODE.NO_MORE_ITEMS, isFetchingMore: false);
    } on DioError catch (e) {
      notifyNoInternet(e, lastSink: HomeEvent.fetchCategories(queryBuilder: query));
    }
  }

  Stream<HomeState> mapLastMonthPosts(_FetchLastMonth e) async* {
    QueryBuilder query = e.queryBuilder;
    try {
      final lastMonthPosts = await _postRepository.fetchOlderPosts(query: query);
      yield state.copyWith(
          lastMonthPosts: ((state.lastMonthPosts != null) && state.lastMonthPosts.last != lastMonthPosts?.items?.last)
              ? state.lastMonthPosts + lastMonthPosts?.items
              : state.lastMonthPosts ?? lastMonthPosts?.items,
          isFetchingMore: false);
    } on DioClientException catch (e) {
      yield state.copyWith(endOfLastMonthPosts: e.code == API_ERROR_CODE.NO_MORE_ITEMS, isFetchingMore: false);
    } on DioError catch (e) {
      notifyNoInternet(e, lastSink: HomeEvent.fetchLastMonthPosts(queryBuilder: query));
    }
  }

  Stream<HomeState> mapBlackExPosts(_FetchBlackExPosts e) async* {
    QueryBuilder query = e.queryBuilder;
    try {
      final blackExPosts = await _postRepository.fetchLatestPosts(query: query);
      yield state.copyWith(
          blackExPosts: ((state.blackExPosts != null) && state.blackExPosts.last != blackExPosts?.items?.last)
              ? state.blackExPosts + blackExPosts?.items
              : state.blackExPosts ?? blackExPosts?.items,
          isFetchingMore: false);
    } on DioClientException catch (e) {
      yield state.copyWith(endOfBlackExPosts: e.code == API_ERROR_CODE.NO_MORE_ITEMS, isFetchingMore: false);
    } on DioError catch (e) {
      notifyNoInternet(e, lastSink: HomeEvent.fetchBlackExPosts(queryBuilder: query));
    }
  }

  Stream<HomeState> mapEntertainments(_FetchEntertainments e) async* {
    QueryBuilder query = e.queryBuilder;
    try {
      final entertainments = await _postRepository.fetchLatestPosts(query: query);
      yield state.copyWith(
          entertainmentPosts: ((state.entertainmentPosts != null) && state.entertainmentPosts.last != entertainments?.items?.last)
              ? state.entertainmentPosts + entertainments?.items
              : state.entertainmentPosts ?? entertainments?.items,
          isFetchingMore: false);
    } on DioClientException catch (e) {
      yield state.copyWith(endOfEntertainmentPosts: e.code == API_ERROR_CODE.NO_MORE_ITEMS, isFetchingMore: false);
    } on DioError catch (e) {
      notifyNoInternet(e, lastSink: HomeEvent.fetchEntertainments(queryBuilder: query));
    }
  }

  Stream<HomeState> mapFeaturedPost(_FetchFeaturedPost e) async* {
    QueryBuilder query = e.queryBuilder;
    try {
      final featured = await _postRepository.fetchSinglePost(e.id, query: query);
      yield state.copyWith(featuredPost: featured, isFetchingMore: false);
    } on DioError catch (ex) {
      notifyNoInternet(ex, lastSink: HomeEvent.fetchFeaturedPost(e.id, queryBuilder: query));
    }
  }

  Stream<HomeState> mapOldTrends(_FetchOldTrends e) async* {
    QueryBuilder query = e.queryBuilder;
    try {
      final oldTrends = await _postRepository.fetchLatestPosts(query: query);
      yield state.copyWith(
          olderTrends: ((state.olderTrends != null) && state.olderTrends.last != oldTrends?.items?.last)
              ? state.olderTrends + oldTrends?.items
              : state.olderTrends ?? oldTrends?.items,
          isFetchingMore: false);
    } on DioClientException catch (e) {
      yield state.copyWith(endOfOlderTrends: e.code == API_ERROR_CODE.NO_MORE_ITEMS, isFetchingMore: false);
    } on DioError catch (e) {
      notifyNoInternet(e, lastSink: HomeEvent.fetchOldTrends(queryBuilder: query));
    }
  }

  Stream<HomeState> mapBeautyPosts(_FetchBeautyPosts e) async* {
    QueryBuilder query = e.queryBuilder;
    try {
      final posts = await _postRepository.fetchLatestPosts(query: query);
      yield state.copyWith(
          beautyPosts: ((state.beautyPosts != null) && state.beautyPosts.last != posts?.items?.last)
              ? state.beautyPosts + posts?.items
              : state.beautyPosts ?? posts?.items,
          isFetchingMore: false);
    } on DioClientException catch (e) {
      yield state.copyWith(endOfBeautyPosts: e.code == API_ERROR_CODE.NO_MORE_ITEMS, isFetchingMore: false);
    } on DioError catch (e) {
      notifyNoInternet(e, lastSink: HomeEvent.fetchBeautyPosts(queryBuilder: query));
    }
  }

  Stream<Future<T>> handleTimeoutException<T>(RepoCaller call, {QueryBuilder args = const QueryBuilder()}) async* {
    yield _r.retry<T>(
      () async => await call(query: args),
      retryIf: (e) =>
          (e is DioError &&
              (e.type == DioErrorType.CONNECT_TIMEOUT ||
                  e.type == DioErrorType.SEND_TIMEOUT ||
                  e.type == DioErrorType.RECEIVE_TIMEOUT ||
                  e.type == DioErrorType.DEFAULT)) ||
          e is SocketException ||
          e is TimeoutException,
      onRetry: (e) {
        _dispatchTimeoutException(failure: DioClientException.unStableInternet());
      },
    );
  }

  void notifyNoInternet(DioError e, {HomeEvent lastSink}) {
    if ((e is DioError &&
            (e.type == DioErrorType.CONNECT_TIMEOUT ||
                e.type == DioErrorType.SEND_TIMEOUT ||
                e.type == DioErrorType.RECEIVE_TIMEOUT ||
                e.type == DioErrorType.DEFAULT)) ||
        e is SocketException ||
        e is TimeoutException) {
      _dispatchTimeoutException(failure: DioClientException.unStableInternet(), ev: lastSink);
    }
  }
}
