import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_screen_event.freezed.dart';

@freezed
@immutable
abstract class HomeScreenEvent with _$HomeScreenEvent {
  const factory HomeScreenEvent.getTopStories({@Default(1) int nextPage}) = _TopStories;
  const factory HomeScreenEvent.getPostsForThisWeek({@required String item}) = _GetPostsForThisWeek;
  const factory HomeScreenEvent.getOlderPosts({@required String item}) = _GetOlderPosts;
}
