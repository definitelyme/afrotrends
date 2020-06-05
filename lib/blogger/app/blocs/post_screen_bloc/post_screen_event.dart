import 'package:afrotrends/blogger/domain/entities/post.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_screen_event.freezed.dart';

@freezed
@immutable
abstract class PostScreenEvent with _$PostScreenEvent {
  const factory PostScreenEvent.onScroll(bool bottomNavVisibility) = _OnScroll;
  const factory PostScreenEvent.onBookmark(Post post) = _OnBookmark;
}
