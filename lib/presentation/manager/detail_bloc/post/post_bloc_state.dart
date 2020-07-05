part of 'post_bloc.dart';

@freezed
@immutable
abstract class PostBlocState with _$PostBlocState {
  const factory PostBlocState({
    @nullable String heroTag,
    @nullable Post post,
    @nullable BuiltList<Comment> comments,
  }) = _PostBlocState;

  factory PostBlocState.init() => PostBlocState();
}
