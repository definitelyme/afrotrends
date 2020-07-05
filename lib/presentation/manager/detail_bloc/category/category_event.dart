part of 'category_bloc.dart';

@freezed
@immutable
abstract class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.fetchRelatedPosts(Taxonomy category) = _FetchRelatedPosts;
}
