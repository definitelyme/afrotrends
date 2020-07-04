part of 'home_bloc.dart';

@freezed
@immutable
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.fetchLatestPosts({QueryBuilder queryBuilder}) = _FetchLatestPosts;
  const factory HomeEvent.fetchCategories({QueryBuilder queryBuilder}) = _FetchCategories;
  const factory HomeEvent.fetchLastMonthPosts({QueryBuilder queryBuilder}) = _FetchLastMonth;

  const factory HomeEvent.sendTimeoutException({Failure failure, HomeEvent sink}) = _SendTimeoutException;

  const factory HomeEvent.fetchBlackExPosts({QueryBuilder queryBuilder}) = _FetchBlackExPosts;

  const factory HomeEvent.fetchEntertainments({QueryBuilder queryBuilder}) = _FetchEntertainments;

  const factory HomeEvent.fetchFeaturedPost(String id, {QueryBuilder queryBuilder}) = _FetchFeaturedPost;
  const factory HomeEvent.fetchOldTrends({QueryBuilder queryBuilder}) = _FetchOldTrends;

  const factory HomeEvent.fetchBeautyPosts({QueryBuilder queryBuilder}) = _FetchBeautyPosts;
}
