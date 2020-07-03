part of 'home_bloc.dart';

@freezed
@immutable
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.fetchLatestPosts({QueryBuilder queryBuilder}) = _FetchLatestPosts;
  const factory HomeEvent.fetchCategories({QueryBuilder queryBuilder}) = _FetchCategories;
  const factory HomeEvent.sendTimeoutException({Failure failure}) = _SendTimeoutException;
}
