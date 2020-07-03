part of 'home_bloc.dart';

@freezed
@immutable
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @nullable BuiltList<Post> latestPosts,
    @nullable ApiClientException failure,
    @nullable bool endOfLatestPosts,
  }) = _HomeState;

  factory HomeState.initial() => HomeState();
}
