import 'package:afrotrends/blogger/domain/entities/category.dart';
import 'package:afrotrends/blogger/domain/entities/post.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'for_you_screen_state.freezed.dart';

@freezed
@immutable
abstract class ForYouScreenState implements _$ForYouScreenState {
  const ForYouScreenState._();

  const factory ForYouScreenState({
    @required ScrollController categoriesController,
    @required ScrollController horizontalPostsController,
    @required ScrollController verticalPostsController,
    @Default(false) bool hasFailure,
    String failureMessage,
    @Default(const <PostCategory>[]) List<PostCategory> categories,
    @Default(const <Post>[]) List<Post> latestNews,
    int pagesCount,
    @Default(0) int postsCount,
    @Default(1) int postTotalPages,
    @Default(true) bool nextPageIsLoading,
  }) = _ForYouScreenState;

  factory ForYouScreenState.initial() => ForYouScreenState(
        categoriesController: ScrollController(),
        horizontalPostsController: ScrollController(),
        verticalPostsController: ScrollController(),
        pagesCount: 1,
      );

  void doStuff() {
    print("Received It");
  }
}
