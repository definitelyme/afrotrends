import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_screen_state.freezed.dart';

@freezed
@immutable
abstract class PostScreenState with _$PostScreenState {
  const factory PostScreenState({
    @Default(true) bool isNavVisible,
  }) = _PostScreenState;

  factory PostScreenState.initial() => PostScreenState();
}
