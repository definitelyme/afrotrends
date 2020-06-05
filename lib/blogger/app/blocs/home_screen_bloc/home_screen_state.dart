import 'package:afrotrends/blogger/domain/entities/post.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'home_screen_state.freezed.dart';

@freezed
@immutable
abstract class HomeScreenState implements _$HomeScreenState {
  const HomeScreenState._();

  const factory HomeScreenState({
    @Default(false) bool hasFailure,
    String failureMessage,
    @Default(false) bool isInit,
    @Default(const <Post>[]) List<Post> topStories,
    @Default(const <Post>[]) List<Post> viralTrends,
    @Default(const <Post>[]) List<Post> entertainment,
    @Default(const <Post>[]) List<Post> beauty,
    @Default(const <Post>[]) List<Post> olderTopStories,
    @Default(const <Post>[]) List<Post> olderViralTrends,
    @Default(const <Post>[]) List<Post> olderEntertainments,
    @Default(const <Post>[]) List<Post> olderBeauty,
  }) = _HomeScreenState;

  factory HomeScreenState.initial() => HomeScreenState();
}
