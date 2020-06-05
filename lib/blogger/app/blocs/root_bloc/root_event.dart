import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'root_event.freezed.dart';

@freezed
@immutable
abstract class RootEvent with _$RootEvent {
  const factory RootEvent.updatePageIndex(int index) = _UpdatePageIndex;

  const factory RootEvent.updateBottomNavVisibility(bool isVisible) = _UpdateBottomNavVisiblity;
}
