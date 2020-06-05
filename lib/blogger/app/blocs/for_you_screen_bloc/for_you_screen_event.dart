import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'for_you_screen_event.freezed.dart';

@freezed
@immutable
abstract class ForYouScreenEvent with _$ForYouScreenEvent {
  const factory ForYouScreenEvent.getCategories() = _GetCategories;
  
  const factory ForYouScreenEvent.getLatestNews() = _GetLatestNews;
  
  const factory ForYouScreenEvent.appendLatestNews({@Default(1) int nextPage}) = _AppendLatestNews;
}

