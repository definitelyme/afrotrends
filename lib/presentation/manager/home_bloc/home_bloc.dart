import 'dart:async';
import 'dart:io';

import 'package:afrotrends/features/data/client/dio/dio_client_exception.dart';
import 'package:afrotrends/features/data/remote/models/post/exports.dart';
import 'package:afrotrends/features/data/repositories/exports.dart';
import 'package:afrotrends/features/domain/api_client/exports.dart';
import 'package:afrotrends/features/domain/entities/failure.dart';
import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
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
  final RetryOptions _r;

  void dispatchLatestPostEvent(QueryBuilder query) {
    add(HomeEvent.fetchLatestPosts(queryBuilder: query));
  }

  void dispatchTimeoutException({Failure failure}) {
    add(HomeEvent.sendTimeoutException(failure: failure));
  }

  HomeBloc(PostRepository postRepository, RetryOptions retryOptions)
      : assert(postRepository != null),
        _postRepository = postRepository,
        _r = retryOptions,
        super(HomeState.initial());

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    yield* event.map(
      fetchLatestPosts: (e) async* {
        yield* mapLatestPosts(e);
      },
      fetchCategories: (e) async* {
        print("Fetching categories");
        yield* mapCategories(e);
      },
      sendTimeoutException: (e) async* {
        yield state.copyWith(failure: (e.failure as ApiClientException));
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
      yield state.copyWith(endOfLatestPosts: e.code == API_ERROR_CODE.NO_MORE_POSTS);
    } on DioError catch (e) {
      if ((e is DioError &&
              (e.type == DioErrorType.CONNECT_TIMEOUT ||
                  e.type == DioErrorType.SEND_TIMEOUT ||
                  e.type == DioErrorType.RECEIVE_TIMEOUT ||
                  e.type == DioErrorType.DEFAULT)) ||
          e is SocketException ||
          e is TimeoutException) {
        dispatchTimeoutException(failure: DioClientException.unStableInternet());
      }
    }
//    on DioError catch (e) {
//      yield* handleTimeoutException<Posts>(_postRepository.fetchLatestPosts, args: query).asyncMap((results) {
//        return results.then((posts) {
//          return state.copyWith(
//            latestPosts: ((state.latestPosts != null) && state.latestPosts.last != posts?.items?.last)
//                ? state.latestPosts + posts?.items
//                : state.latestPosts ?? posts?.items,
//          );
//        });
//      });
//
//      handleTimeoutException<Posts>(_postRepository.fetchLatestPosts, args: query).transform(
//        StreamTransformer.fromHandlers(
//          handleData: (Future<Posts> results, EventSink<HomeState> sink) async {
//            results.then((posts) {
//              print("From streamTransformer => ${posts.items.length}");
//              sink.add(state.copyWith(
//                latestPosts: ((state.latestPosts != null) && state.latestPosts.last != posts?.items?.last)
//                    ? state.latestPosts + posts?.items
//                    : state.latestPosts ?? posts?.items,
//              ));
//              sink.close();
//            });
//          },
//          handleDone: (EventSink<HomeState> sink) async {},
//          handleError: (Object error, StackTrace trace, EventSink<HomeState> state) {},
//        ),
//      );
//    }
  }

  Stream<HomeState> mapCategories(_FetchCategories e) async* {
    //
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
        dispatchTimeoutException(failure: DioClientException.unStableInternet());
      },
    );
  }
}
