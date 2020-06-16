import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'failure.dart';

part 'cache_failure.freezed.dart';

@freezed
abstract class CacheFailure extends Failure with _$CacheFailure {
  const factory CacheFailure({String message}) = _CacheFailure;

  factory CacheFailure.persistFailed({String message}) =>
      CacheFailure(message: message ?? "Failed to persist data. \Please contact support.");

  factory CacheFailure.failedToRetrieve({String message}) =>
      CacheFailure(message: message ?? "Fatal! Cache data not found.");
}
