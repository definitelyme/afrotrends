part of 'category_bloc.dart';

@freezed
@immutable
abstract class CategoryState with _$CategoryState {
  const factory CategoryState({
    CarouselController controller,
    @nullable BuiltList<Post> posts,
  }) = _CategoryState;

  factory CategoryState.init() => CategoryState(controller: CarouselController());
}
