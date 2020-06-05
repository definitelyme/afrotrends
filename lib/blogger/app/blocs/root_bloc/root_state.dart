import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'root_state.freezed.dart';

@freezed
@immutable
abstract class RootState with _$RootState {
  const factory RootState({
    @Default(0) int currentIndex,
    @Default(true) bool bottomNavVisibility,
    ScrollController scrollController,
  }) = _RootState;

  factory RootState.initial() => RootState(scrollController: ScrollController());
}
