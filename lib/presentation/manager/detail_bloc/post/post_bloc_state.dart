part of 'post_bloc.dart';

@freezed
@immutable
abstract class PostBlocState with _$PostBlocState {
  const factory PostBlocState({String heroTag, Post post}) = _PostBlocState;

  factory PostBlocState.init() => PostBlocState();
}
