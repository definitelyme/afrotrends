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
    yield state.copyWith(failure: null);

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
        yield state.copyWith(failure: (e.failure as ApiClientException), lastSink: e.sink);
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
      );
    } on DioClientException catch (e) {
      yield state.copyWith(endOfLatestPosts: e.code == API_ERROR_CODE.NO_MORE_ITEMS);
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
      );
    } on DioClientException catch (e) {
      yield state.copyWith(endOfCategories: e.code == API_ERROR_CODE.NO_MORE_ITEMS);
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
      );
    } on DioClientException catch (e) {
      yield state.copyWith(endOfLastMonthPosts: e.code == API_ERROR_CODE.NO_MORE_ITEMS);
    } on DioError catch (e) {
      notifyNoInternet(e, lastSink: HomeEvent.fetchLastMonthPosts(queryBuilder: query));
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
