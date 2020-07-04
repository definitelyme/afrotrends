part of 'post_bloc.dart';

@freezed
@immutable
abstract class PostBlocEvent with _$PostBlocEvent {
  const factory PostBlocEvent.getExtraPostInfo(String id) = _GetPostInfo;
}
