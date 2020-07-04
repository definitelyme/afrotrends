// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  _FetchLatestPosts fetchLatestPosts({QueryBuilder queryBuilder}) {
    return _FetchLatestPosts(
      queryBuilder: queryBuilder,
    );
  }

  _FetchCategories fetchCategories({QueryBuilder queryBuilder}) {
    return _FetchCategories(
      queryBuilder: queryBuilder,
    );
  }

  _FetchLastMonth fetchLastMonthPosts({QueryBuilder queryBuilder}) {
    return _FetchLastMonth(
      queryBuilder: queryBuilder,
    );
  }

  _SendTimeoutException sendTimeoutException(
      {Failure failure, HomeEvent sink}) {
    return _SendTimeoutException(
      failure: failure,
      sink: sink,
    );
  }

  _FetchBlackExPosts fetchBlackExPosts({QueryBuilder queryBuilder}) {
    return _FetchBlackExPosts(
      queryBuilder: queryBuilder,
    );
  }

  _FetchEntertainments fetchEntertainments({QueryBuilder queryBuilder}) {
    return _FetchEntertainments(
      queryBuilder: queryBuilder,
    );
  }

  _FetchFeaturedPost fetchFeaturedPost(String id, {QueryBuilder queryBuilder}) {
    return _FetchFeaturedPost(
      id,
      queryBuilder: queryBuilder,
    );
  }

  _FetchOldTrends fetchOldTrends({QueryBuilder queryBuilder}) {
    return _FetchOldTrends(
      queryBuilder: queryBuilder,
    );
  }

  _FetchBeautyPosts fetchBeautyPosts({QueryBuilder queryBuilder}) {
    return _FetchBeautyPosts(
      queryBuilder: queryBuilder,
    );
  }
}

// ignore: unused_element
const $HomeEvent = _$HomeEventTearOff();

mixin _$HomeEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchLatestPosts(QueryBuilder queryBuilder),
    @required Result fetchCategories(QueryBuilder queryBuilder),
    @required Result fetchLastMonthPosts(QueryBuilder queryBuilder),
    @required Result sendTimeoutException(Failure failure, HomeEvent sink),
    @required Result fetchBlackExPosts(QueryBuilder queryBuilder),
    @required Result fetchEntertainments(QueryBuilder queryBuilder),
    @required Result fetchFeaturedPost(String id, QueryBuilder queryBuilder),
    @required Result fetchOldTrends(QueryBuilder queryBuilder),
    @required Result fetchBeautyPosts(QueryBuilder queryBuilder),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchLatestPosts(QueryBuilder queryBuilder),
    Result fetchCategories(QueryBuilder queryBuilder),
    Result fetchLastMonthPosts(QueryBuilder queryBuilder),
    Result sendTimeoutException(Failure failure, HomeEvent sink),
    Result fetchBlackExPosts(QueryBuilder queryBuilder),
    Result fetchEntertainments(QueryBuilder queryBuilder),
    Result fetchFeaturedPost(String id, QueryBuilder queryBuilder),
    Result fetchOldTrends(QueryBuilder queryBuilder),
    Result fetchBeautyPosts(QueryBuilder queryBuilder),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchLatestPosts(_FetchLatestPosts value),
    @required Result fetchCategories(_FetchCategories value),
    @required Result fetchLastMonthPosts(_FetchLastMonth value),
    @required Result sendTimeoutException(_SendTimeoutException value),
    @required Result fetchBlackExPosts(_FetchBlackExPosts value),
    @required Result fetchEntertainments(_FetchEntertainments value),
    @required Result fetchFeaturedPost(_FetchFeaturedPost value),
    @required Result fetchOldTrends(_FetchOldTrends value),
    @required Result fetchBeautyPosts(_FetchBeautyPosts value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchLatestPosts(_FetchLatestPosts value),
    Result fetchCategories(_FetchCategories value),
    Result fetchLastMonthPosts(_FetchLastMonth value),
    Result sendTimeoutException(_SendTimeoutException value),
    Result fetchBlackExPosts(_FetchBlackExPosts value),
    Result fetchEntertainments(_FetchEntertainments value),
    Result fetchFeaturedPost(_FetchFeaturedPost value),
    Result fetchOldTrends(_FetchOldTrends value),
    Result fetchBeautyPosts(_FetchBeautyPosts value),
    @required Result orElse(),
  });
}

abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

abstract class _$FetchLatestPostsCopyWith<$Res> {
  factory _$FetchLatestPostsCopyWith(
          _FetchLatestPosts value, $Res Function(_FetchLatestPosts) then) =
      __$FetchLatestPostsCopyWithImpl<$Res>;
  $Res call({QueryBuilder queryBuilder});
}

class __$FetchLatestPostsCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$FetchLatestPostsCopyWith<$Res> {
  __$FetchLatestPostsCopyWithImpl(
      _FetchLatestPosts _value, $Res Function(_FetchLatestPosts) _then)
      : super(_value, (v) => _then(v as _FetchLatestPosts));

  @override
  _FetchLatestPosts get _value => super._value as _FetchLatestPosts;

  @override
  $Res call({
    Object queryBuilder = freezed,
  }) {
    return _then(_FetchLatestPosts(
      queryBuilder: queryBuilder == freezed
          ? _value.queryBuilder
          : queryBuilder as QueryBuilder,
    ));
  }
}

class _$_FetchLatestPosts
    with DiagnosticableTreeMixin
    implements _FetchLatestPosts {
  const _$_FetchLatestPosts({this.queryBuilder});

  @override
  final QueryBuilder queryBuilder;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.fetchLatestPosts(queryBuilder: $queryBuilder)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.fetchLatestPosts'))
      ..add(DiagnosticsProperty('queryBuilder', queryBuilder));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchLatestPosts &&
            (identical(other.queryBuilder, queryBuilder) ||
                const DeepCollectionEquality()
                    .equals(other.queryBuilder, queryBuilder)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(queryBuilder);

  @override
  _$FetchLatestPostsCopyWith<_FetchLatestPosts> get copyWith =>
      __$FetchLatestPostsCopyWithImpl<_FetchLatestPosts>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchLatestPosts(QueryBuilder queryBuilder),
    @required Result fetchCategories(QueryBuilder queryBuilder),
    @required Result fetchLastMonthPosts(QueryBuilder queryBuilder),
    @required Result sendTimeoutException(Failure failure, HomeEvent sink),
    @required Result fetchBlackExPosts(QueryBuilder queryBuilder),
    @required Result fetchEntertainments(QueryBuilder queryBuilder),
    @required Result fetchFeaturedPost(String id, QueryBuilder queryBuilder),
    @required Result fetchOldTrends(QueryBuilder queryBuilder),
    @required Result fetchBeautyPosts(QueryBuilder queryBuilder),
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(fetchLastMonthPosts != null);
    assert(sendTimeoutException != null);
    assert(fetchBlackExPosts != null);
    assert(fetchEntertainments != null);
    assert(fetchFeaturedPost != null);
    assert(fetchOldTrends != null);
    assert(fetchBeautyPosts != null);
    return fetchLatestPosts(queryBuilder);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchLatestPosts(QueryBuilder queryBuilder),
    Result fetchCategories(QueryBuilder queryBuilder),
    Result fetchLastMonthPosts(QueryBuilder queryBuilder),
    Result sendTimeoutException(Failure failure, HomeEvent sink),
    Result fetchBlackExPosts(QueryBuilder queryBuilder),
    Result fetchEntertainments(QueryBuilder queryBuilder),
    Result fetchFeaturedPost(String id, QueryBuilder queryBuilder),
    Result fetchOldTrends(QueryBuilder queryBuilder),
    Result fetchBeautyPosts(QueryBuilder queryBuilder),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchLatestPosts != null) {
      return fetchLatestPosts(queryBuilder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchLatestPosts(_FetchLatestPosts value),
    @required Result fetchCategories(_FetchCategories value),
    @required Result fetchLastMonthPosts(_FetchLastMonth value),
    @required Result sendTimeoutException(_SendTimeoutException value),
    @required Result fetchBlackExPosts(_FetchBlackExPosts value),
    @required Result fetchEntertainments(_FetchEntertainments value),
    @required Result fetchFeaturedPost(_FetchFeaturedPost value),
    @required Result fetchOldTrends(_FetchOldTrends value),
    @required Result fetchBeautyPosts(_FetchBeautyPosts value),
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(fetchLastMonthPosts != null);
    assert(sendTimeoutException != null);
    assert(fetchBlackExPosts != null);
    assert(fetchEntertainments != null);
    assert(fetchFeaturedPost != null);
    assert(fetchOldTrends != null);
    assert(fetchBeautyPosts != null);
    return fetchLatestPosts(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchLatestPosts(_FetchLatestPosts value),
    Result fetchCategories(_FetchCategories value),
    Result fetchLastMonthPosts(_FetchLastMonth value),
    Result sendTimeoutException(_SendTimeoutException value),
    Result fetchBlackExPosts(_FetchBlackExPosts value),
    Result fetchEntertainments(_FetchEntertainments value),
    Result fetchFeaturedPost(_FetchFeaturedPost value),
    Result fetchOldTrends(_FetchOldTrends value),
    Result fetchBeautyPosts(_FetchBeautyPosts value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchLatestPosts != null) {
      return fetchLatestPosts(this);
    }
    return orElse();
  }
}

abstract class _FetchLatestPosts implements HomeEvent {
  const factory _FetchLatestPosts({QueryBuilder queryBuilder}) =
      _$_FetchLatestPosts;

  QueryBuilder get queryBuilder;
  _$FetchLatestPostsCopyWith<_FetchLatestPosts> get copyWith;
}

abstract class _$FetchCategoriesCopyWith<$Res> {
  factory _$FetchCategoriesCopyWith(
          _FetchCategories value, $Res Function(_FetchCategories) then) =
      __$FetchCategoriesCopyWithImpl<$Res>;
  $Res call({QueryBuilder queryBuilder});
}

class __$FetchCategoriesCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$FetchCategoriesCopyWith<$Res> {
  __$FetchCategoriesCopyWithImpl(
      _FetchCategories _value, $Res Function(_FetchCategories) _then)
      : super(_value, (v) => _then(v as _FetchCategories));

  @override
  _FetchCategories get _value => super._value as _FetchCategories;

  @override
  $Res call({
    Object queryBuilder = freezed,
  }) {
    return _then(_FetchCategories(
      queryBuilder: queryBuilder == freezed
          ? _value.queryBuilder
          : queryBuilder as QueryBuilder,
    ));
  }
}

class _$_FetchCategories
    with DiagnosticableTreeMixin
    implements _FetchCategories {
  const _$_FetchCategories({this.queryBuilder});

  @override
  final QueryBuilder queryBuilder;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.fetchCategories(queryBuilder: $queryBuilder)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.fetchCategories'))
      ..add(DiagnosticsProperty('queryBuilder', queryBuilder));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchCategories &&
            (identical(other.queryBuilder, queryBuilder) ||
                const DeepCollectionEquality()
                    .equals(other.queryBuilder, queryBuilder)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(queryBuilder);

  @override
  _$FetchCategoriesCopyWith<_FetchCategories> get copyWith =>
      __$FetchCategoriesCopyWithImpl<_FetchCategories>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchLatestPosts(QueryBuilder queryBuilder),
    @required Result fetchCategories(QueryBuilder queryBuilder),
    @required Result fetchLastMonthPosts(QueryBuilder queryBuilder),
    @required Result sendTimeoutException(Failure failure, HomeEvent sink),
    @required Result fetchBlackExPosts(QueryBuilder queryBuilder),
    @required Result fetchEntertainments(QueryBuilder queryBuilder),
    @required Result fetchFeaturedPost(String id, QueryBuilder queryBuilder),
    @required Result fetchOldTrends(QueryBuilder queryBuilder),
    @required Result fetchBeautyPosts(QueryBuilder queryBuilder),
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(fetchLastMonthPosts != null);
    assert(sendTimeoutException != null);
    assert(fetchBlackExPosts != null);
    assert(fetchEntertainments != null);
    assert(fetchFeaturedPost != null);
    assert(fetchOldTrends != null);
    assert(fetchBeautyPosts != null);
    return fetchCategories(queryBuilder);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchLatestPosts(QueryBuilder queryBuilder),
    Result fetchCategories(QueryBuilder queryBuilder),
    Result fetchLastMonthPosts(QueryBuilder queryBuilder),
    Result sendTimeoutException(Failure failure, HomeEvent sink),
    Result fetchBlackExPosts(QueryBuilder queryBuilder),
    Result fetchEntertainments(QueryBuilder queryBuilder),
    Result fetchFeaturedPost(String id, QueryBuilder queryBuilder),
    Result fetchOldTrends(QueryBuilder queryBuilder),
    Result fetchBeautyPosts(QueryBuilder queryBuilder),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchCategories != null) {
      return fetchCategories(queryBuilder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchLatestPosts(_FetchLatestPosts value),
    @required Result fetchCategories(_FetchCategories value),
    @required Result fetchLastMonthPosts(_FetchLastMonth value),
    @required Result sendTimeoutException(_SendTimeoutException value),
    @required Result fetchBlackExPosts(_FetchBlackExPosts value),
    @required Result fetchEntertainments(_FetchEntertainments value),
    @required Result fetchFeaturedPost(_FetchFeaturedPost value),
    @required Result fetchOldTrends(_FetchOldTrends value),
    @required Result fetchBeautyPosts(_FetchBeautyPosts value),
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(fetchLastMonthPosts != null);
    assert(sendTimeoutException != null);
    assert(fetchBlackExPosts != null);
    assert(fetchEntertainments != null);
    assert(fetchFeaturedPost != null);
    assert(fetchOldTrends != null);
    assert(fetchBeautyPosts != null);
    return fetchCategories(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchLatestPosts(_FetchLatestPosts value),
    Result fetchCategories(_FetchCategories value),
    Result fetchLastMonthPosts(_FetchLastMonth value),
    Result sendTimeoutException(_SendTimeoutException value),
    Result fetchBlackExPosts(_FetchBlackExPosts value),
    Result fetchEntertainments(_FetchEntertainments value),
    Result fetchFeaturedPost(_FetchFeaturedPost value),
    Result fetchOldTrends(_FetchOldTrends value),
    Result fetchBeautyPosts(_FetchBeautyPosts value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchCategories != null) {
      return fetchCategories(this);
    }
    return orElse();
  }
}

abstract class _FetchCategories implements HomeEvent {
  const factory _FetchCategories({QueryBuilder queryBuilder}) =
      _$_FetchCategories;

  QueryBuilder get queryBuilder;
  _$FetchCategoriesCopyWith<_FetchCategories> get copyWith;
}

abstract class _$FetchLastMonthCopyWith<$Res> {
  factory _$FetchLastMonthCopyWith(
          _FetchLastMonth value, $Res Function(_FetchLastMonth) then) =
      __$FetchLastMonthCopyWithImpl<$Res>;
  $Res call({QueryBuilder queryBuilder});
}

class __$FetchLastMonthCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$FetchLastMonthCopyWith<$Res> {
  __$FetchLastMonthCopyWithImpl(
      _FetchLastMonth _value, $Res Function(_FetchLastMonth) _then)
      : super(_value, (v) => _then(v as _FetchLastMonth));

  @override
  _FetchLastMonth get _value => super._value as _FetchLastMonth;

  @override
  $Res call({
    Object queryBuilder = freezed,
  }) {
    return _then(_FetchLastMonth(
      queryBuilder: queryBuilder == freezed
          ? _value.queryBuilder
          : queryBuilder as QueryBuilder,
    ));
  }
}

class _$_FetchLastMonth
    with DiagnosticableTreeMixin
    implements _FetchLastMonth {
  const _$_FetchLastMonth({this.queryBuilder});

  @override
  final QueryBuilder queryBuilder;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.fetchLastMonthPosts(queryBuilder: $queryBuilder)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.fetchLastMonthPosts'))
      ..add(DiagnosticsProperty('queryBuilder', queryBuilder));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchLastMonth &&
            (identical(other.queryBuilder, queryBuilder) ||
                const DeepCollectionEquality()
                    .equals(other.queryBuilder, queryBuilder)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(queryBuilder);

  @override
  _$FetchLastMonthCopyWith<_FetchLastMonth> get copyWith =>
      __$FetchLastMonthCopyWithImpl<_FetchLastMonth>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchLatestPosts(QueryBuilder queryBuilder),
    @required Result fetchCategories(QueryBuilder queryBuilder),
    @required Result fetchLastMonthPosts(QueryBuilder queryBuilder),
    @required Result sendTimeoutException(Failure failure, HomeEvent sink),
    @required Result fetchBlackExPosts(QueryBuilder queryBuilder),
    @required Result fetchEntertainments(QueryBuilder queryBuilder),
    @required Result fetchFeaturedPost(String id, QueryBuilder queryBuilder),
    @required Result fetchOldTrends(QueryBuilder queryBuilder),
    @required Result fetchBeautyPosts(QueryBuilder queryBuilder),
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(fetchLastMonthPosts != null);
    assert(sendTimeoutException != null);
    assert(fetchBlackExPosts != null);
    assert(fetchEntertainments != null);
    assert(fetchFeaturedPost != null);
    assert(fetchOldTrends != null);
    assert(fetchBeautyPosts != null);
    return fetchLastMonthPosts(queryBuilder);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchLatestPosts(QueryBuilder queryBuilder),
    Result fetchCategories(QueryBuilder queryBuilder),
    Result fetchLastMonthPosts(QueryBuilder queryBuilder),
    Result sendTimeoutException(Failure failure, HomeEvent sink),
    Result fetchBlackExPosts(QueryBuilder queryBuilder),
    Result fetchEntertainments(QueryBuilder queryBuilder),
    Result fetchFeaturedPost(String id, QueryBuilder queryBuilder),
    Result fetchOldTrends(QueryBuilder queryBuilder),
    Result fetchBeautyPosts(QueryBuilder queryBuilder),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchLastMonthPosts != null) {
      return fetchLastMonthPosts(queryBuilder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchLatestPosts(_FetchLatestPosts value),
    @required Result fetchCategories(_FetchCategories value),
    @required Result fetchLastMonthPosts(_FetchLastMonth value),
    @required Result sendTimeoutException(_SendTimeoutException value),
    @required Result fetchBlackExPosts(_FetchBlackExPosts value),
    @required Result fetchEntertainments(_FetchEntertainments value),
    @required Result fetchFeaturedPost(_FetchFeaturedPost value),
    @required Result fetchOldTrends(_FetchOldTrends value),
    @required Result fetchBeautyPosts(_FetchBeautyPosts value),
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(fetchLastMonthPosts != null);
    assert(sendTimeoutException != null);
    assert(fetchBlackExPosts != null);
    assert(fetchEntertainments != null);
    assert(fetchFeaturedPost != null);
    assert(fetchOldTrends != null);
    assert(fetchBeautyPosts != null);
    return fetchLastMonthPosts(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchLatestPosts(_FetchLatestPosts value),
    Result fetchCategories(_FetchCategories value),
    Result fetchLastMonthPosts(_FetchLastMonth value),
    Result sendTimeoutException(_SendTimeoutException value),
    Result fetchBlackExPosts(_FetchBlackExPosts value),
    Result fetchEntertainments(_FetchEntertainments value),
    Result fetchFeaturedPost(_FetchFeaturedPost value),
    Result fetchOldTrends(_FetchOldTrends value),
    Result fetchBeautyPosts(_FetchBeautyPosts value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchLastMonthPosts != null) {
      return fetchLastMonthPosts(this);
    }
    return orElse();
  }
}

abstract class _FetchLastMonth implements HomeEvent {
  const factory _FetchLastMonth({QueryBuilder queryBuilder}) =
      _$_FetchLastMonth;

  QueryBuilder get queryBuilder;
  _$FetchLastMonthCopyWith<_FetchLastMonth> get copyWith;
}

abstract class _$SendTimeoutExceptionCopyWith<$Res> {
  factory _$SendTimeoutExceptionCopyWith(_SendTimeoutException value,
          $Res Function(_SendTimeoutException) then) =
      __$SendTimeoutExceptionCopyWithImpl<$Res>;
  $Res call({Failure failure, HomeEvent sink});
}

class __$SendTimeoutExceptionCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$SendTimeoutExceptionCopyWith<$Res> {
  __$SendTimeoutExceptionCopyWithImpl(
      _SendTimeoutException _value, $Res Function(_SendTimeoutException) _then)
      : super(_value, (v) => _then(v as _SendTimeoutException));

  @override
  _SendTimeoutException get _value => super._value as _SendTimeoutException;

  @override
  $Res call({
    Object failure = freezed,
    Object sink = freezed,
  }) {
    return _then(_SendTimeoutException(
      failure: failure == freezed ? _value.failure : failure as Failure,
      sink: sink == freezed ? _value.sink : sink as HomeEvent,
    ));
  }
}

class _$_SendTimeoutException
    with DiagnosticableTreeMixin
    implements _SendTimeoutException {
  const _$_SendTimeoutException({this.failure, this.sink});

  @override
  final Failure failure;
  @override
  final HomeEvent sink;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.sendTimeoutException(failure: $failure, sink: $sink)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.sendTimeoutException'))
      ..add(DiagnosticsProperty('failure', failure))
      ..add(DiagnosticsProperty('sink', sink));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SendTimeoutException &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality()
                    .equals(other.failure, failure)) &&
            (identical(other.sink, sink) ||
                const DeepCollectionEquality().equals(other.sink, sink)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failure) ^
      const DeepCollectionEquality().hash(sink);

  @override
  _$SendTimeoutExceptionCopyWith<_SendTimeoutException> get copyWith =>
      __$SendTimeoutExceptionCopyWithImpl<_SendTimeoutException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchLatestPosts(QueryBuilder queryBuilder),
    @required Result fetchCategories(QueryBuilder queryBuilder),
    @required Result fetchLastMonthPosts(QueryBuilder queryBuilder),
    @required Result sendTimeoutException(Failure failure, HomeEvent sink),
    @required Result fetchBlackExPosts(QueryBuilder queryBuilder),
    @required Result fetchEntertainments(QueryBuilder queryBuilder),
    @required Result fetchFeaturedPost(String id, QueryBuilder queryBuilder),
    @required Result fetchOldTrends(QueryBuilder queryBuilder),
    @required Result fetchBeautyPosts(QueryBuilder queryBuilder),
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(fetchLastMonthPosts != null);
    assert(sendTimeoutException != null);
    assert(fetchBlackExPosts != null);
    assert(fetchEntertainments != null);
    assert(fetchFeaturedPost != null);
    assert(fetchOldTrends != null);
    assert(fetchBeautyPosts != null);
    return sendTimeoutException(failure, sink);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchLatestPosts(QueryBuilder queryBuilder),
    Result fetchCategories(QueryBuilder queryBuilder),
    Result fetchLastMonthPosts(QueryBuilder queryBuilder),
    Result sendTimeoutException(Failure failure, HomeEvent sink),
    Result fetchBlackExPosts(QueryBuilder queryBuilder),
    Result fetchEntertainments(QueryBuilder queryBuilder),
    Result fetchFeaturedPost(String id, QueryBuilder queryBuilder),
    Result fetchOldTrends(QueryBuilder queryBuilder),
    Result fetchBeautyPosts(QueryBuilder queryBuilder),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendTimeoutException != null) {
      return sendTimeoutException(failure, sink);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchLatestPosts(_FetchLatestPosts value),
    @required Result fetchCategories(_FetchCategories value),
    @required Result fetchLastMonthPosts(_FetchLastMonth value),
    @required Result sendTimeoutException(_SendTimeoutException value),
    @required Result fetchBlackExPosts(_FetchBlackExPosts value),
    @required Result fetchEntertainments(_FetchEntertainments value),
    @required Result fetchFeaturedPost(_FetchFeaturedPost value),
    @required Result fetchOldTrends(_FetchOldTrends value),
    @required Result fetchBeautyPosts(_FetchBeautyPosts value),
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(fetchLastMonthPosts != null);
    assert(sendTimeoutException != null);
    assert(fetchBlackExPosts != null);
    assert(fetchEntertainments != null);
    assert(fetchFeaturedPost != null);
    assert(fetchOldTrends != null);
    assert(fetchBeautyPosts != null);
    return sendTimeoutException(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchLatestPosts(_FetchLatestPosts value),
    Result fetchCategories(_FetchCategories value),
    Result fetchLastMonthPosts(_FetchLastMonth value),
    Result sendTimeoutException(_SendTimeoutException value),
    Result fetchBlackExPosts(_FetchBlackExPosts value),
    Result fetchEntertainments(_FetchEntertainments value),
    Result fetchFeaturedPost(_FetchFeaturedPost value),
    Result fetchOldTrends(_FetchOldTrends value),
    Result fetchBeautyPosts(_FetchBeautyPosts value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendTimeoutException != null) {
      return sendTimeoutException(this);
    }
    return orElse();
  }
}

abstract class _SendTimeoutException implements HomeEvent {
  const factory _SendTimeoutException({Failure failure, HomeEvent sink}) =
      _$_SendTimeoutException;

  Failure get failure;
  HomeEvent get sink;
  _$SendTimeoutExceptionCopyWith<_SendTimeoutException> get copyWith;
}

abstract class _$FetchBlackExPostsCopyWith<$Res> {
  factory _$FetchBlackExPostsCopyWith(
          _FetchBlackExPosts value, $Res Function(_FetchBlackExPosts) then) =
      __$FetchBlackExPostsCopyWithImpl<$Res>;
  $Res call({QueryBuilder queryBuilder});
}

class __$FetchBlackExPostsCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$FetchBlackExPostsCopyWith<$Res> {
  __$FetchBlackExPostsCopyWithImpl(
      _FetchBlackExPosts _value, $Res Function(_FetchBlackExPosts) _then)
      : super(_value, (v) => _then(v as _FetchBlackExPosts));

  @override
  _FetchBlackExPosts get _value => super._value as _FetchBlackExPosts;

  @override
  $Res call({
    Object queryBuilder = freezed,
  }) {
    return _then(_FetchBlackExPosts(
      queryBuilder: queryBuilder == freezed
          ? _value.queryBuilder
          : queryBuilder as QueryBuilder,
    ));
  }
}

class _$_FetchBlackExPosts
    with DiagnosticableTreeMixin
    implements _FetchBlackExPosts {
  const _$_FetchBlackExPosts({this.queryBuilder});

  @override
  final QueryBuilder queryBuilder;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.fetchBlackExPosts(queryBuilder: $queryBuilder)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.fetchBlackExPosts'))
      ..add(DiagnosticsProperty('queryBuilder', queryBuilder));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchBlackExPosts &&
            (identical(other.queryBuilder, queryBuilder) ||
                const DeepCollectionEquality()
                    .equals(other.queryBuilder, queryBuilder)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(queryBuilder);

  @override
  _$FetchBlackExPostsCopyWith<_FetchBlackExPosts> get copyWith =>
      __$FetchBlackExPostsCopyWithImpl<_FetchBlackExPosts>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchLatestPosts(QueryBuilder queryBuilder),
    @required Result fetchCategories(QueryBuilder queryBuilder),
    @required Result fetchLastMonthPosts(QueryBuilder queryBuilder),
    @required Result sendTimeoutException(Failure failure, HomeEvent sink),
    @required Result fetchBlackExPosts(QueryBuilder queryBuilder),
    @required Result fetchEntertainments(QueryBuilder queryBuilder),
    @required Result fetchFeaturedPost(String id, QueryBuilder queryBuilder),
    @required Result fetchOldTrends(QueryBuilder queryBuilder),
    @required Result fetchBeautyPosts(QueryBuilder queryBuilder),
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(fetchLastMonthPosts != null);
    assert(sendTimeoutException != null);
    assert(fetchBlackExPosts != null);
    assert(fetchEntertainments != null);
    assert(fetchFeaturedPost != null);
    assert(fetchOldTrends != null);
    assert(fetchBeautyPosts != null);
    return fetchBlackExPosts(queryBuilder);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchLatestPosts(QueryBuilder queryBuilder),
    Result fetchCategories(QueryBuilder queryBuilder),
    Result fetchLastMonthPosts(QueryBuilder queryBuilder),
    Result sendTimeoutException(Failure failure, HomeEvent sink),
    Result fetchBlackExPosts(QueryBuilder queryBuilder),
    Result fetchEntertainments(QueryBuilder queryBuilder),
    Result fetchFeaturedPost(String id, QueryBuilder queryBuilder),
    Result fetchOldTrends(QueryBuilder queryBuilder),
    Result fetchBeautyPosts(QueryBuilder queryBuilder),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchBlackExPosts != null) {
      return fetchBlackExPosts(queryBuilder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchLatestPosts(_FetchLatestPosts value),
    @required Result fetchCategories(_FetchCategories value),
    @required Result fetchLastMonthPosts(_FetchLastMonth value),
    @required Result sendTimeoutException(_SendTimeoutException value),
    @required Result fetchBlackExPosts(_FetchBlackExPosts value),
    @required Result fetchEntertainments(_FetchEntertainments value),
    @required Result fetchFeaturedPost(_FetchFeaturedPost value),
    @required Result fetchOldTrends(_FetchOldTrends value),
    @required Result fetchBeautyPosts(_FetchBeautyPosts value),
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(fetchLastMonthPosts != null);
    assert(sendTimeoutException != null);
    assert(fetchBlackExPosts != null);
    assert(fetchEntertainments != null);
    assert(fetchFeaturedPost != null);
    assert(fetchOldTrends != null);
    assert(fetchBeautyPosts != null);
    return fetchBlackExPosts(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchLatestPosts(_FetchLatestPosts value),
    Result fetchCategories(_FetchCategories value),
    Result fetchLastMonthPosts(_FetchLastMonth value),
    Result sendTimeoutException(_SendTimeoutException value),
    Result fetchBlackExPosts(_FetchBlackExPosts value),
    Result fetchEntertainments(_FetchEntertainments value),
    Result fetchFeaturedPost(_FetchFeaturedPost value),
    Result fetchOldTrends(_FetchOldTrends value),
    Result fetchBeautyPosts(_FetchBeautyPosts value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchBlackExPosts != null) {
      return fetchBlackExPosts(this);
    }
    return orElse();
  }
}

abstract class _FetchBlackExPosts implements HomeEvent {
  const factory _FetchBlackExPosts({QueryBuilder queryBuilder}) =
      _$_FetchBlackExPosts;

  QueryBuilder get queryBuilder;
  _$FetchBlackExPostsCopyWith<_FetchBlackExPosts> get copyWith;
}

abstract class _$FetchEntertainmentsCopyWith<$Res> {
  factory _$FetchEntertainmentsCopyWith(_FetchEntertainments value,
          $Res Function(_FetchEntertainments) then) =
      __$FetchEntertainmentsCopyWithImpl<$Res>;
  $Res call({QueryBuilder queryBuilder});
}

class __$FetchEntertainmentsCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$FetchEntertainmentsCopyWith<$Res> {
  __$FetchEntertainmentsCopyWithImpl(
      _FetchEntertainments _value, $Res Function(_FetchEntertainments) _then)
      : super(_value, (v) => _then(v as _FetchEntertainments));

  @override
  _FetchEntertainments get _value => super._value as _FetchEntertainments;

  @override
  $Res call({
    Object queryBuilder = freezed,
  }) {
    return _then(_FetchEntertainments(
      queryBuilder: queryBuilder == freezed
          ? _value.queryBuilder
          : queryBuilder as QueryBuilder,
    ));
  }
}

class _$_FetchEntertainments
    with DiagnosticableTreeMixin
    implements _FetchEntertainments {
  const _$_FetchEntertainments({this.queryBuilder});

  @override
  final QueryBuilder queryBuilder;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.fetchEntertainments(queryBuilder: $queryBuilder)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.fetchEntertainments'))
      ..add(DiagnosticsProperty('queryBuilder', queryBuilder));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchEntertainments &&
            (identical(other.queryBuilder, queryBuilder) ||
                const DeepCollectionEquality()
                    .equals(other.queryBuilder, queryBuilder)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(queryBuilder);

  @override
  _$FetchEntertainmentsCopyWith<_FetchEntertainments> get copyWith =>
      __$FetchEntertainmentsCopyWithImpl<_FetchEntertainments>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchLatestPosts(QueryBuilder queryBuilder),
    @required Result fetchCategories(QueryBuilder queryBuilder),
    @required Result fetchLastMonthPosts(QueryBuilder queryBuilder),
    @required Result sendTimeoutException(Failure failure, HomeEvent sink),
    @required Result fetchBlackExPosts(QueryBuilder queryBuilder),
    @required Result fetchEntertainments(QueryBuilder queryBuilder),
    @required Result fetchFeaturedPost(String id, QueryBuilder queryBuilder),
    @required Result fetchOldTrends(QueryBuilder queryBuilder),
    @required Result fetchBeautyPosts(QueryBuilder queryBuilder),
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(fetchLastMonthPosts != null);
    assert(sendTimeoutException != null);
    assert(fetchBlackExPosts != null);
    assert(fetchEntertainments != null);
    assert(fetchFeaturedPost != null);
    assert(fetchOldTrends != null);
    assert(fetchBeautyPosts != null);
    return fetchEntertainments(queryBuilder);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchLatestPosts(QueryBuilder queryBuilder),
    Result fetchCategories(QueryBuilder queryBuilder),
    Result fetchLastMonthPosts(QueryBuilder queryBuilder),
    Result sendTimeoutException(Failure failure, HomeEvent sink),
    Result fetchBlackExPosts(QueryBuilder queryBuilder),
    Result fetchEntertainments(QueryBuilder queryBuilder),
    Result fetchFeaturedPost(String id, QueryBuilder queryBuilder),
    Result fetchOldTrends(QueryBuilder queryBuilder),
    Result fetchBeautyPosts(QueryBuilder queryBuilder),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchEntertainments != null) {
      return fetchEntertainments(queryBuilder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchLatestPosts(_FetchLatestPosts value),
    @required Result fetchCategories(_FetchCategories value),
    @required Result fetchLastMonthPosts(_FetchLastMonth value),
    @required Result sendTimeoutException(_SendTimeoutException value),
    @required Result fetchBlackExPosts(_FetchBlackExPosts value),
    @required Result fetchEntertainments(_FetchEntertainments value),
    @required Result fetchFeaturedPost(_FetchFeaturedPost value),
    @required Result fetchOldTrends(_FetchOldTrends value),
    @required Result fetchBeautyPosts(_FetchBeautyPosts value),
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(fetchLastMonthPosts != null);
    assert(sendTimeoutException != null);
    assert(fetchBlackExPosts != null);
    assert(fetchEntertainments != null);
    assert(fetchFeaturedPost != null);
    assert(fetchOldTrends != null);
    assert(fetchBeautyPosts != null);
    return fetchEntertainments(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchLatestPosts(_FetchLatestPosts value),
    Result fetchCategories(_FetchCategories value),
    Result fetchLastMonthPosts(_FetchLastMonth value),
    Result sendTimeoutException(_SendTimeoutException value),
    Result fetchBlackExPosts(_FetchBlackExPosts value),
    Result fetchEntertainments(_FetchEntertainments value),
    Result fetchFeaturedPost(_FetchFeaturedPost value),
    Result fetchOldTrends(_FetchOldTrends value),
    Result fetchBeautyPosts(_FetchBeautyPosts value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchEntertainments != null) {
      return fetchEntertainments(this);
    }
    return orElse();
  }
}

abstract class _FetchEntertainments implements HomeEvent {
  const factory _FetchEntertainments({QueryBuilder queryBuilder}) =
      _$_FetchEntertainments;

  QueryBuilder get queryBuilder;
  _$FetchEntertainmentsCopyWith<_FetchEntertainments> get copyWith;
}

abstract class _$FetchFeaturedPostCopyWith<$Res> {
  factory _$FetchFeaturedPostCopyWith(
          _FetchFeaturedPost value, $Res Function(_FetchFeaturedPost) then) =
      __$FetchFeaturedPostCopyWithImpl<$Res>;
  $Res call({String id, QueryBuilder queryBuilder});
}

class __$FetchFeaturedPostCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$FetchFeaturedPostCopyWith<$Res> {
  __$FetchFeaturedPostCopyWithImpl(
      _FetchFeaturedPost _value, $Res Function(_FetchFeaturedPost) _then)
      : super(_value, (v) => _then(v as _FetchFeaturedPost));

  @override
  _FetchFeaturedPost get _value => super._value as _FetchFeaturedPost;

  @override
  $Res call({
    Object id = freezed,
    Object queryBuilder = freezed,
  }) {
    return _then(_FetchFeaturedPost(
      id == freezed ? _value.id : id as String,
      queryBuilder: queryBuilder == freezed
          ? _value.queryBuilder
          : queryBuilder as QueryBuilder,
    ));
  }
}

class _$_FetchFeaturedPost
    with DiagnosticableTreeMixin
    implements _FetchFeaturedPost {
  const _$_FetchFeaturedPost(this.id, {this.queryBuilder}) : assert(id != null);

  @override
  final String id;
  @override
  final QueryBuilder queryBuilder;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.fetchFeaturedPost(id: $id, queryBuilder: $queryBuilder)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.fetchFeaturedPost'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('queryBuilder', queryBuilder));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchFeaturedPost &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.queryBuilder, queryBuilder) ||
                const DeepCollectionEquality()
                    .equals(other.queryBuilder, queryBuilder)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(queryBuilder);

  @override
  _$FetchFeaturedPostCopyWith<_FetchFeaturedPost> get copyWith =>
      __$FetchFeaturedPostCopyWithImpl<_FetchFeaturedPost>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchLatestPosts(QueryBuilder queryBuilder),
    @required Result fetchCategories(QueryBuilder queryBuilder),
    @required Result fetchLastMonthPosts(QueryBuilder queryBuilder),
    @required Result sendTimeoutException(Failure failure, HomeEvent sink),
    @required Result fetchBlackExPosts(QueryBuilder queryBuilder),
    @required Result fetchEntertainments(QueryBuilder queryBuilder),
    @required Result fetchFeaturedPost(String id, QueryBuilder queryBuilder),
    @required Result fetchOldTrends(QueryBuilder queryBuilder),
    @required Result fetchBeautyPosts(QueryBuilder queryBuilder),
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(fetchLastMonthPosts != null);
    assert(sendTimeoutException != null);
    assert(fetchBlackExPosts != null);
    assert(fetchEntertainments != null);
    assert(fetchFeaturedPost != null);
    assert(fetchOldTrends != null);
    assert(fetchBeautyPosts != null);
    return fetchFeaturedPost(id, queryBuilder);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchLatestPosts(QueryBuilder queryBuilder),
    Result fetchCategories(QueryBuilder queryBuilder),
    Result fetchLastMonthPosts(QueryBuilder queryBuilder),
    Result sendTimeoutException(Failure failure, HomeEvent sink),
    Result fetchBlackExPosts(QueryBuilder queryBuilder),
    Result fetchEntertainments(QueryBuilder queryBuilder),
    Result fetchFeaturedPost(String id, QueryBuilder queryBuilder),
    Result fetchOldTrends(QueryBuilder queryBuilder),
    Result fetchBeautyPosts(QueryBuilder queryBuilder),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchFeaturedPost != null) {
      return fetchFeaturedPost(id, queryBuilder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchLatestPosts(_FetchLatestPosts value),
    @required Result fetchCategories(_FetchCategories value),
    @required Result fetchLastMonthPosts(_FetchLastMonth value),
    @required Result sendTimeoutException(_SendTimeoutException value),
    @required Result fetchBlackExPosts(_FetchBlackExPosts value),
    @required Result fetchEntertainments(_FetchEntertainments value),
    @required Result fetchFeaturedPost(_FetchFeaturedPost value),
    @required Result fetchOldTrends(_FetchOldTrends value),
    @required Result fetchBeautyPosts(_FetchBeautyPosts value),
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(fetchLastMonthPosts != null);
    assert(sendTimeoutException != null);
    assert(fetchBlackExPosts != null);
    assert(fetchEntertainments != null);
    assert(fetchFeaturedPost != null);
    assert(fetchOldTrends != null);
    assert(fetchBeautyPosts != null);
    return fetchFeaturedPost(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchLatestPosts(_FetchLatestPosts value),
    Result fetchCategories(_FetchCategories value),
    Result fetchLastMonthPosts(_FetchLastMonth value),
    Result sendTimeoutException(_SendTimeoutException value),
    Result fetchBlackExPosts(_FetchBlackExPosts value),
    Result fetchEntertainments(_FetchEntertainments value),
    Result fetchFeaturedPost(_FetchFeaturedPost value),
    Result fetchOldTrends(_FetchOldTrends value),
    Result fetchBeautyPosts(_FetchBeautyPosts value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchFeaturedPost != null) {
      return fetchFeaturedPost(this);
    }
    return orElse();
  }
}

abstract class _FetchFeaturedPost implements HomeEvent {
  const factory _FetchFeaturedPost(String id, {QueryBuilder queryBuilder}) =
      _$_FetchFeaturedPost;

  String get id;
  QueryBuilder get queryBuilder;
  _$FetchFeaturedPostCopyWith<_FetchFeaturedPost> get copyWith;
}

abstract class _$FetchOldTrendsCopyWith<$Res> {
  factory _$FetchOldTrendsCopyWith(
          _FetchOldTrends value, $Res Function(_FetchOldTrends) then) =
      __$FetchOldTrendsCopyWithImpl<$Res>;
  $Res call({QueryBuilder queryBuilder});
}

class __$FetchOldTrendsCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$FetchOldTrendsCopyWith<$Res> {
  __$FetchOldTrendsCopyWithImpl(
      _FetchOldTrends _value, $Res Function(_FetchOldTrends) _then)
      : super(_value, (v) => _then(v as _FetchOldTrends));

  @override
  _FetchOldTrends get _value => super._value as _FetchOldTrends;

  @override
  $Res call({
    Object queryBuilder = freezed,
  }) {
    return _then(_FetchOldTrends(
      queryBuilder: queryBuilder == freezed
          ? _value.queryBuilder
          : queryBuilder as QueryBuilder,
    ));
  }
}

class _$_FetchOldTrends
    with DiagnosticableTreeMixin
    implements _FetchOldTrends {
  const _$_FetchOldTrends({this.queryBuilder});

  @override
  final QueryBuilder queryBuilder;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.fetchOldTrends(queryBuilder: $queryBuilder)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.fetchOldTrends'))
      ..add(DiagnosticsProperty('queryBuilder', queryBuilder));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchOldTrends &&
            (identical(other.queryBuilder, queryBuilder) ||
                const DeepCollectionEquality()
                    .equals(other.queryBuilder, queryBuilder)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(queryBuilder);

  @override
  _$FetchOldTrendsCopyWith<_FetchOldTrends> get copyWith =>
      __$FetchOldTrendsCopyWithImpl<_FetchOldTrends>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchLatestPosts(QueryBuilder queryBuilder),
    @required Result fetchCategories(QueryBuilder queryBuilder),
    @required Result fetchLastMonthPosts(QueryBuilder queryBuilder),
    @required Result sendTimeoutException(Failure failure, HomeEvent sink),
    @required Result fetchBlackExPosts(QueryBuilder queryBuilder),
    @required Result fetchEntertainments(QueryBuilder queryBuilder),
    @required Result fetchFeaturedPost(String id, QueryBuilder queryBuilder),
    @required Result fetchOldTrends(QueryBuilder queryBuilder),
    @required Result fetchBeautyPosts(QueryBuilder queryBuilder),
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(fetchLastMonthPosts != null);
    assert(sendTimeoutException != null);
    assert(fetchBlackExPosts != null);
    assert(fetchEntertainments != null);
    assert(fetchFeaturedPost != null);
    assert(fetchOldTrends != null);
    assert(fetchBeautyPosts != null);
    return fetchOldTrends(queryBuilder);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchLatestPosts(QueryBuilder queryBuilder),
    Result fetchCategories(QueryBuilder queryBuilder),
    Result fetchLastMonthPosts(QueryBuilder queryBuilder),
    Result sendTimeoutException(Failure failure, HomeEvent sink),
    Result fetchBlackExPosts(QueryBuilder queryBuilder),
    Result fetchEntertainments(QueryBuilder queryBuilder),
    Result fetchFeaturedPost(String id, QueryBuilder queryBuilder),
    Result fetchOldTrends(QueryBuilder queryBuilder),
    Result fetchBeautyPosts(QueryBuilder queryBuilder),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchOldTrends != null) {
      return fetchOldTrends(queryBuilder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchLatestPosts(_FetchLatestPosts value),
    @required Result fetchCategories(_FetchCategories value),
    @required Result fetchLastMonthPosts(_FetchLastMonth value),
    @required Result sendTimeoutException(_SendTimeoutException value),
    @required Result fetchBlackExPosts(_FetchBlackExPosts value),
    @required Result fetchEntertainments(_FetchEntertainments value),
    @required Result fetchFeaturedPost(_FetchFeaturedPost value),
    @required Result fetchOldTrends(_FetchOldTrends value),
    @required Result fetchBeautyPosts(_FetchBeautyPosts value),
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(fetchLastMonthPosts != null);
    assert(sendTimeoutException != null);
    assert(fetchBlackExPosts != null);
    assert(fetchEntertainments != null);
    assert(fetchFeaturedPost != null);
    assert(fetchOldTrends != null);
    assert(fetchBeautyPosts != null);
    return fetchOldTrends(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchLatestPosts(_FetchLatestPosts value),
    Result fetchCategories(_FetchCategories value),
    Result fetchLastMonthPosts(_FetchLastMonth value),
    Result sendTimeoutException(_SendTimeoutException value),
    Result fetchBlackExPosts(_FetchBlackExPosts value),
    Result fetchEntertainments(_FetchEntertainments value),
    Result fetchFeaturedPost(_FetchFeaturedPost value),
    Result fetchOldTrends(_FetchOldTrends value),
    Result fetchBeautyPosts(_FetchBeautyPosts value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchOldTrends != null) {
      return fetchOldTrends(this);
    }
    return orElse();
  }
}

abstract class _FetchOldTrends implements HomeEvent {
  const factory _FetchOldTrends({QueryBuilder queryBuilder}) =
      _$_FetchOldTrends;

  QueryBuilder get queryBuilder;
  _$FetchOldTrendsCopyWith<_FetchOldTrends> get copyWith;
}

abstract class _$FetchBeautyPostsCopyWith<$Res> {
  factory _$FetchBeautyPostsCopyWith(
          _FetchBeautyPosts value, $Res Function(_FetchBeautyPosts) then) =
      __$FetchBeautyPostsCopyWithImpl<$Res>;
  $Res call({QueryBuilder queryBuilder});
}

class __$FetchBeautyPostsCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$FetchBeautyPostsCopyWith<$Res> {
  __$FetchBeautyPostsCopyWithImpl(
      _FetchBeautyPosts _value, $Res Function(_FetchBeautyPosts) _then)
      : super(_value, (v) => _then(v as _FetchBeautyPosts));

  @override
  _FetchBeautyPosts get _value => super._value as _FetchBeautyPosts;

  @override
  $Res call({
    Object queryBuilder = freezed,
  }) {
    return _then(_FetchBeautyPosts(
      queryBuilder: queryBuilder == freezed
          ? _value.queryBuilder
          : queryBuilder as QueryBuilder,
    ));
  }
}

class _$_FetchBeautyPosts
    with DiagnosticableTreeMixin
    implements _FetchBeautyPosts {
  const _$_FetchBeautyPosts({this.queryBuilder});

  @override
  final QueryBuilder queryBuilder;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.fetchBeautyPosts(queryBuilder: $queryBuilder)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.fetchBeautyPosts'))
      ..add(DiagnosticsProperty('queryBuilder', queryBuilder));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchBeautyPosts &&
            (identical(other.queryBuilder, queryBuilder) ||
                const DeepCollectionEquality()
                    .equals(other.queryBuilder, queryBuilder)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(queryBuilder);

  @override
  _$FetchBeautyPostsCopyWith<_FetchBeautyPosts> get copyWith =>
      __$FetchBeautyPostsCopyWithImpl<_FetchBeautyPosts>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchLatestPosts(QueryBuilder queryBuilder),
    @required Result fetchCategories(QueryBuilder queryBuilder),
    @required Result fetchLastMonthPosts(QueryBuilder queryBuilder),
    @required Result sendTimeoutException(Failure failure, HomeEvent sink),
    @required Result fetchBlackExPosts(QueryBuilder queryBuilder),
    @required Result fetchEntertainments(QueryBuilder queryBuilder),
    @required Result fetchFeaturedPost(String id, QueryBuilder queryBuilder),
    @required Result fetchOldTrends(QueryBuilder queryBuilder),
    @required Result fetchBeautyPosts(QueryBuilder queryBuilder),
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(fetchLastMonthPosts != null);
    assert(sendTimeoutException != null);
    assert(fetchBlackExPosts != null);
    assert(fetchEntertainments != null);
    assert(fetchFeaturedPost != null);
    assert(fetchOldTrends != null);
    assert(fetchBeautyPosts != null);
    return fetchBeautyPosts(queryBuilder);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchLatestPosts(QueryBuilder queryBuilder),
    Result fetchCategories(QueryBuilder queryBuilder),
    Result fetchLastMonthPosts(QueryBuilder queryBuilder),
    Result sendTimeoutException(Failure failure, HomeEvent sink),
    Result fetchBlackExPosts(QueryBuilder queryBuilder),
    Result fetchEntertainments(QueryBuilder queryBuilder),
    Result fetchFeaturedPost(String id, QueryBuilder queryBuilder),
    Result fetchOldTrends(QueryBuilder queryBuilder),
    Result fetchBeautyPosts(QueryBuilder queryBuilder),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchBeautyPosts != null) {
      return fetchBeautyPosts(queryBuilder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchLatestPosts(_FetchLatestPosts value),
    @required Result fetchCategories(_FetchCategories value),
    @required Result fetchLastMonthPosts(_FetchLastMonth value),
    @required Result sendTimeoutException(_SendTimeoutException value),
    @required Result fetchBlackExPosts(_FetchBlackExPosts value),
    @required Result fetchEntertainments(_FetchEntertainments value),
    @required Result fetchFeaturedPost(_FetchFeaturedPost value),
    @required Result fetchOldTrends(_FetchOldTrends value),
    @required Result fetchBeautyPosts(_FetchBeautyPosts value),
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(fetchLastMonthPosts != null);
    assert(sendTimeoutException != null);
    assert(fetchBlackExPosts != null);
    assert(fetchEntertainments != null);
    assert(fetchFeaturedPost != null);
    assert(fetchOldTrends != null);
    assert(fetchBeautyPosts != null);
    return fetchBeautyPosts(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchLatestPosts(_FetchLatestPosts value),
    Result fetchCategories(_FetchCategories value),
    Result fetchLastMonthPosts(_FetchLastMonth value),
    Result sendTimeoutException(_SendTimeoutException value),
    Result fetchBlackExPosts(_FetchBlackExPosts value),
    Result fetchEntertainments(_FetchEntertainments value),
    Result fetchFeaturedPost(_FetchFeaturedPost value),
    Result fetchOldTrends(_FetchOldTrends value),
    Result fetchBeautyPosts(_FetchBeautyPosts value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchBeautyPosts != null) {
      return fetchBeautyPosts(this);
    }
    return orElse();
  }
}

abstract class _FetchBeautyPosts implements HomeEvent {
  const factory _FetchBeautyPosts({QueryBuilder queryBuilder}) =
      _$_FetchBeautyPosts;

  QueryBuilder get queryBuilder;
  _$FetchBeautyPostsCopyWith<_FetchBeautyPosts> get copyWith;
}

class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call(
      {@required ScrollController scrollController,
      bool isFetchingMore = false,
      @nullable BuiltList<Post> latestPosts,
      @nullable bool endOfLatestPosts,
      @nullable BuiltList<Taxonomy> categories,
      @nullable bool endOfCategories,
      @nullable BuiltList<Post> lastMonthPosts,
      @nullable bool endOfLastMonthPosts,
      @nullable ApiClientException<dynamic> failure,
      @nullable HomeEvent lastSink,
      @nullable BuiltList<Post> blackExPosts,
      @nullable bool endOfBlackExPosts,
      @nullable BuiltList<Post> entertainmentPosts,
      @nullable bool endOfEntertainmentPosts,
      @nullable Post featuredPost,
      @nullable BuiltList<Post> olderTrends,
      @nullable bool endOfOlderTrends,
      @nullable BuiltList<Post> beautyPosts,
      @nullable bool endOfBeautyPosts}) {
    return _HomeState(
      scrollController: scrollController,
      isFetchingMore: isFetchingMore,
      latestPosts: latestPosts,
      endOfLatestPosts: endOfLatestPosts,
      categories: categories,
      endOfCategories: endOfCategories,
      lastMonthPosts: lastMonthPosts,
      endOfLastMonthPosts: endOfLastMonthPosts,
      failure: failure,
      lastSink: lastSink,
      blackExPosts: blackExPosts,
      endOfBlackExPosts: endOfBlackExPosts,
      entertainmentPosts: entertainmentPosts,
      endOfEntertainmentPosts: endOfEntertainmentPosts,
      featuredPost: featuredPost,
      olderTrends: olderTrends,
      endOfOlderTrends: endOfOlderTrends,
      beautyPosts: beautyPosts,
      endOfBeautyPosts: endOfBeautyPosts,
    );
  }
}

// ignore: unused_element
const $HomeState = _$HomeStateTearOff();

mixin _$HomeState {
  ScrollController get scrollController;
  bool get isFetchingMore;
  @nullable
  BuiltList<Post> get latestPosts;
  @nullable
  bool get endOfLatestPosts;
  @nullable
  BuiltList<Taxonomy> get categories;
  @nullable
  bool get endOfCategories;
  @nullable
  BuiltList<Post> get lastMonthPosts;
  @nullable
  bool get endOfLastMonthPosts;
  @nullable
  ApiClientException<dynamic> get failure;
  @nullable
  HomeEvent get lastSink;
  @nullable
  BuiltList<Post> get blackExPosts;
  @nullable
  bool get endOfBlackExPosts;
  @nullable
  BuiltList<Post> get entertainmentPosts;
  @nullable
  bool get endOfEntertainmentPosts;
  @nullable
  Post get featuredPost;
  @nullable
  BuiltList<Post> get olderTrends;
  @nullable
  bool get endOfOlderTrends;
  @nullable
  BuiltList<Post> get beautyPosts;
  @nullable
  bool get endOfBeautyPosts;

  $HomeStateCopyWith<HomeState> get copyWith;
}

abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {ScrollController scrollController,
      bool isFetchingMore,
      @nullable BuiltList<Post> latestPosts,
      @nullable bool endOfLatestPosts,
      @nullable BuiltList<Taxonomy> categories,
      @nullable bool endOfCategories,
      @nullable BuiltList<Post> lastMonthPosts,
      @nullable bool endOfLastMonthPosts,
      @nullable ApiClientException<dynamic> failure,
      @nullable HomeEvent lastSink,
      @nullable BuiltList<Post> blackExPosts,
      @nullable bool endOfBlackExPosts,
      @nullable BuiltList<Post> entertainmentPosts,
      @nullable bool endOfEntertainmentPosts,
      @nullable Post featuredPost,
      @nullable BuiltList<Post> olderTrends,
      @nullable bool endOfOlderTrends,
      @nullable BuiltList<Post> beautyPosts,
      @nullable bool endOfBeautyPosts});

  $HomeEventCopyWith<$Res> get lastSink;
}

class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object scrollController = freezed,
    Object isFetchingMore = freezed,
    Object latestPosts = freezed,
    Object endOfLatestPosts = freezed,
    Object categories = freezed,
    Object endOfCategories = freezed,
    Object lastMonthPosts = freezed,
    Object endOfLastMonthPosts = freezed,
    Object failure = freezed,
    Object lastSink = freezed,
    Object blackExPosts = freezed,
    Object endOfBlackExPosts = freezed,
    Object entertainmentPosts = freezed,
    Object endOfEntertainmentPosts = freezed,
    Object featuredPost = freezed,
    Object olderTrends = freezed,
    Object endOfOlderTrends = freezed,
    Object beautyPosts = freezed,
    Object endOfBeautyPosts = freezed,
  }) {
    return _then(_value.copyWith(
      scrollController: scrollController == freezed
          ? _value.scrollController
          : scrollController as ScrollController,
      isFetchingMore: isFetchingMore == freezed
          ? _value.isFetchingMore
          : isFetchingMore as bool,
      latestPosts: latestPosts == freezed
          ? _value.latestPosts
          : latestPosts as BuiltList<Post>,
      endOfLatestPosts: endOfLatestPosts == freezed
          ? _value.endOfLatestPosts
          : endOfLatestPosts as bool,
      categories: categories == freezed
          ? _value.categories
          : categories as BuiltList<Taxonomy>,
      endOfCategories: endOfCategories == freezed
          ? _value.endOfCategories
          : endOfCategories as bool,
      lastMonthPosts: lastMonthPosts == freezed
          ? _value.lastMonthPosts
          : lastMonthPosts as BuiltList<Post>,
      endOfLastMonthPosts: endOfLastMonthPosts == freezed
          ? _value.endOfLastMonthPosts
          : endOfLastMonthPosts as bool,
      failure: failure == freezed
          ? _value.failure
          : failure as ApiClientException<dynamic>,
      lastSink: lastSink == freezed ? _value.lastSink : lastSink as HomeEvent,
      blackExPosts: blackExPosts == freezed
          ? _value.blackExPosts
          : blackExPosts as BuiltList<Post>,
      endOfBlackExPosts: endOfBlackExPosts == freezed
          ? _value.endOfBlackExPosts
          : endOfBlackExPosts as bool,
      entertainmentPosts: entertainmentPosts == freezed
          ? _value.entertainmentPosts
          : entertainmentPosts as BuiltList<Post>,
      endOfEntertainmentPosts: endOfEntertainmentPosts == freezed
          ? _value.endOfEntertainmentPosts
          : endOfEntertainmentPosts as bool,
      featuredPost:
          featuredPost == freezed ? _value.featuredPost : featuredPost as Post,
      olderTrends: olderTrends == freezed
          ? _value.olderTrends
          : olderTrends as BuiltList<Post>,
      endOfOlderTrends: endOfOlderTrends == freezed
          ? _value.endOfOlderTrends
          : endOfOlderTrends as bool,
      beautyPosts: beautyPosts == freezed
          ? _value.beautyPosts
          : beautyPosts as BuiltList<Post>,
      endOfBeautyPosts: endOfBeautyPosts == freezed
          ? _value.endOfBeautyPosts
          : endOfBeautyPosts as bool,
    ));
  }

  @override
  $HomeEventCopyWith<$Res> get lastSink {
    if (_value.lastSink == null) {
      return null;
    }
    return $HomeEventCopyWith<$Res>(_value.lastSink, (value) {
      return _then(_value.copyWith(lastSink: value));
    });
  }
}

abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ScrollController scrollController,
      bool isFetchingMore,
      @nullable BuiltList<Post> latestPosts,
      @nullable bool endOfLatestPosts,
      @nullable BuiltList<Taxonomy> categories,
      @nullable bool endOfCategories,
      @nullable BuiltList<Post> lastMonthPosts,
      @nullable bool endOfLastMonthPosts,
      @nullable ApiClientException<dynamic> failure,
      @nullable HomeEvent lastSink,
      @nullable BuiltList<Post> blackExPosts,
      @nullable bool endOfBlackExPosts,
      @nullable BuiltList<Post> entertainmentPosts,
      @nullable bool endOfEntertainmentPosts,
      @nullable Post featuredPost,
      @nullable BuiltList<Post> olderTrends,
      @nullable bool endOfOlderTrends,
      @nullable BuiltList<Post> beautyPosts,
      @nullable bool endOfBeautyPosts});

  @override
  $HomeEventCopyWith<$Res> get lastSink;
}

class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object scrollController = freezed,
    Object isFetchingMore = freezed,
    Object latestPosts = freezed,
    Object endOfLatestPosts = freezed,
    Object categories = freezed,
    Object endOfCategories = freezed,
    Object lastMonthPosts = freezed,
    Object endOfLastMonthPosts = freezed,
    Object failure = freezed,
    Object lastSink = freezed,
    Object blackExPosts = freezed,
    Object endOfBlackExPosts = freezed,
    Object entertainmentPosts = freezed,
    Object endOfEntertainmentPosts = freezed,
    Object featuredPost = freezed,
    Object olderTrends = freezed,
    Object endOfOlderTrends = freezed,
    Object beautyPosts = freezed,
    Object endOfBeautyPosts = freezed,
  }) {
    return _then(_HomeState(
      scrollController: scrollController == freezed
          ? _value.scrollController
          : scrollController as ScrollController,
      isFetchingMore: isFetchingMore == freezed
          ? _value.isFetchingMore
          : isFetchingMore as bool,
      latestPosts: latestPosts == freezed
          ? _value.latestPosts
          : latestPosts as BuiltList<Post>,
      endOfLatestPosts: endOfLatestPosts == freezed
          ? _value.endOfLatestPosts
          : endOfLatestPosts as bool,
      categories: categories == freezed
          ? _value.categories
          : categories as BuiltList<Taxonomy>,
      endOfCategories: endOfCategories == freezed
          ? _value.endOfCategories
          : endOfCategories as bool,
      lastMonthPosts: lastMonthPosts == freezed
          ? _value.lastMonthPosts
          : lastMonthPosts as BuiltList<Post>,
      endOfLastMonthPosts: endOfLastMonthPosts == freezed
          ? _value.endOfLastMonthPosts
          : endOfLastMonthPosts as bool,
      failure: failure == freezed
          ? _value.failure
          : failure as ApiClientException<dynamic>,
      lastSink: lastSink == freezed ? _value.lastSink : lastSink as HomeEvent,
      blackExPosts: blackExPosts == freezed
          ? _value.blackExPosts
          : blackExPosts as BuiltList<Post>,
      endOfBlackExPosts: endOfBlackExPosts == freezed
          ? _value.endOfBlackExPosts
          : endOfBlackExPosts as bool,
      entertainmentPosts: entertainmentPosts == freezed
          ? _value.entertainmentPosts
          : entertainmentPosts as BuiltList<Post>,
      endOfEntertainmentPosts: endOfEntertainmentPosts == freezed
          ? _value.endOfEntertainmentPosts
          : endOfEntertainmentPosts as bool,
      featuredPost:
          featuredPost == freezed ? _value.featuredPost : featuredPost as Post,
      olderTrends: olderTrends == freezed
          ? _value.olderTrends
          : olderTrends as BuiltList<Post>,
      endOfOlderTrends: endOfOlderTrends == freezed
          ? _value.endOfOlderTrends
          : endOfOlderTrends as bool,
      beautyPosts: beautyPosts == freezed
          ? _value.beautyPosts
          : beautyPosts as BuiltList<Post>,
      endOfBeautyPosts: endOfBeautyPosts == freezed
          ? _value.endOfBeautyPosts
          : endOfBeautyPosts as bool,
    ));
  }
}

class _$_HomeState with DiagnosticableTreeMixin implements _HomeState {
  const _$_HomeState(
      {@required this.scrollController,
      this.isFetchingMore = false,
      @nullable this.latestPosts,
      @nullable this.endOfLatestPosts,
      @nullable this.categories,
      @nullable this.endOfCategories,
      @nullable this.lastMonthPosts,
      @nullable this.endOfLastMonthPosts,
      @nullable this.failure,
      @nullable this.lastSink,
      @nullable this.blackExPosts,
      @nullable this.endOfBlackExPosts,
      @nullable this.entertainmentPosts,
      @nullable this.endOfEntertainmentPosts,
      @nullable this.featuredPost,
      @nullable this.olderTrends,
      @nullable this.endOfOlderTrends,
      @nullable this.beautyPosts,
      @nullable this.endOfBeautyPosts})
      : assert(scrollController != null),
        assert(isFetchingMore != null);

  @override
  final ScrollController scrollController;
  @JsonKey(defaultValue: false)
  @override
  final bool isFetchingMore;
  @override
  @nullable
  final BuiltList<Post> latestPosts;
  @override
  @nullable
  final bool endOfLatestPosts;
  @override
  @nullable
  final BuiltList<Taxonomy> categories;
  @override
  @nullable
  final bool endOfCategories;
  @override
  @nullable
  final BuiltList<Post> lastMonthPosts;
  @override
  @nullable
  final bool endOfLastMonthPosts;
  @override
  @nullable
  final ApiClientException<dynamic> failure;
  @override
  @nullable
  final HomeEvent lastSink;
  @override
  @nullable
  final BuiltList<Post> blackExPosts;
  @override
  @nullable
  final bool endOfBlackExPosts;
  @override
  @nullable
  final BuiltList<Post> entertainmentPosts;
  @override
  @nullable
  final bool endOfEntertainmentPosts;
  @override
  @nullable
  final Post featuredPost;
  @override
  @nullable
  final BuiltList<Post> olderTrends;
  @override
  @nullable
  final bool endOfOlderTrends;
  @override
  @nullable
  final BuiltList<Post> beautyPosts;
  @override
  @nullable
  final bool endOfBeautyPosts;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(scrollController: $scrollController, isFetchingMore: $isFetchingMore, latestPosts: $latestPosts, endOfLatestPosts: $endOfLatestPosts, categories: $categories, endOfCategories: $endOfCategories, lastMonthPosts: $lastMonthPosts, endOfLastMonthPosts: $endOfLastMonthPosts, failure: $failure, lastSink: $lastSink, blackExPosts: $blackExPosts, endOfBlackExPosts: $endOfBlackExPosts, entertainmentPosts: $entertainmentPosts, endOfEntertainmentPosts: $endOfEntertainmentPosts, featuredPost: $featuredPost, olderTrends: $olderTrends, endOfOlderTrends: $endOfOlderTrends, beautyPosts: $beautyPosts, endOfBeautyPosts: $endOfBeautyPosts)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('scrollController', scrollController))
      ..add(DiagnosticsProperty('isFetchingMore', isFetchingMore))
      ..add(DiagnosticsProperty('latestPosts', latestPosts))
      ..add(DiagnosticsProperty('endOfLatestPosts', endOfLatestPosts))
      ..add(DiagnosticsProperty('categories', categories))
      ..add(DiagnosticsProperty('endOfCategories', endOfCategories))
      ..add(DiagnosticsProperty('lastMonthPosts', lastMonthPosts))
      ..add(DiagnosticsProperty('endOfLastMonthPosts', endOfLastMonthPosts))
      ..add(DiagnosticsProperty('failure', failure))
      ..add(DiagnosticsProperty('lastSink', lastSink))
      ..add(DiagnosticsProperty('blackExPosts', blackExPosts))
      ..add(DiagnosticsProperty('endOfBlackExPosts', endOfBlackExPosts))
      ..add(DiagnosticsProperty('entertainmentPosts', entertainmentPosts))
      ..add(DiagnosticsProperty(
          'endOfEntertainmentPosts', endOfEntertainmentPosts))
      ..add(DiagnosticsProperty('featuredPost', featuredPost))
      ..add(DiagnosticsProperty('olderTrends', olderTrends))
      ..add(DiagnosticsProperty('endOfOlderTrends', endOfOlderTrends))
      ..add(DiagnosticsProperty('beautyPosts', beautyPosts))
      ..add(DiagnosticsProperty('endOfBeautyPosts', endOfBeautyPosts));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeState &&
            (identical(other.scrollController, scrollController) ||
                const DeepCollectionEquality()
                    .equals(other.scrollController, scrollController)) &&
            (identical(other.isFetchingMore, isFetchingMore) ||
                const DeepCollectionEquality()
                    .equals(other.isFetchingMore, isFetchingMore)) &&
            (identical(other.latestPosts, latestPosts) ||
                const DeepCollectionEquality()
                    .equals(other.latestPosts, latestPosts)) &&
            (identical(other.endOfLatestPosts, endOfLatestPosts) ||
                const DeepCollectionEquality()
                    .equals(other.endOfLatestPosts, endOfLatestPosts)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.endOfCategories, endOfCategories) ||
                const DeepCollectionEquality()
                    .equals(other.endOfCategories, endOfCategories)) &&
            (identical(other.lastMonthPosts, lastMonthPosts) ||
                const DeepCollectionEquality()
                    .equals(other.lastMonthPosts, lastMonthPosts)) &&
            (identical(other.endOfLastMonthPosts, endOfLastMonthPosts) ||
                const DeepCollectionEquality()
                    .equals(other.endOfLastMonthPosts, endOfLastMonthPosts)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality()
                    .equals(other.failure, failure)) &&
            (identical(other.lastSink, lastSink) ||
                const DeepCollectionEquality()
                    .equals(other.lastSink, lastSink)) &&
            (identical(other.blackExPosts, blackExPosts) ||
                const DeepCollectionEquality()
                    .equals(other.blackExPosts, blackExPosts)) &&
            (identical(other.endOfBlackExPosts, endOfBlackExPosts) ||
                const DeepCollectionEquality()
                    .equals(other.endOfBlackExPosts, endOfBlackExPosts)) &&
            (identical(other.entertainmentPosts, entertainmentPosts) ||
                const DeepCollectionEquality()
                    .equals(other.entertainmentPosts, entertainmentPosts)) &&
            (identical(
                    other.endOfEntertainmentPosts, endOfEntertainmentPosts) ||
                const DeepCollectionEquality().equals(
                    other.endOfEntertainmentPosts, endOfEntertainmentPosts)) &&
            (identical(other.featuredPost, featuredPost) ||
                const DeepCollectionEquality()
                    .equals(other.featuredPost, featuredPost)) &&
            (identical(other.olderTrends, olderTrends) ||
                const DeepCollectionEquality()
                    .equals(other.olderTrends, olderTrends)) &&
            (identical(other.endOfOlderTrends, endOfOlderTrends) ||
                const DeepCollectionEquality()
                    .equals(other.endOfOlderTrends, endOfOlderTrends)) &&
            (identical(other.beautyPosts, beautyPosts) ||
                const DeepCollectionEquality()
                    .equals(other.beautyPosts, beautyPosts)) &&
            (identical(other.endOfBeautyPosts, endOfBeautyPosts) ||
                const DeepCollectionEquality()
                    .equals(other.endOfBeautyPosts, endOfBeautyPosts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(scrollController) ^
      const DeepCollectionEquality().hash(isFetchingMore) ^
      const DeepCollectionEquality().hash(latestPosts) ^
      const DeepCollectionEquality().hash(endOfLatestPosts) ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(endOfCategories) ^
      const DeepCollectionEquality().hash(lastMonthPosts) ^
      const DeepCollectionEquality().hash(endOfLastMonthPosts) ^
      const DeepCollectionEquality().hash(failure) ^
      const DeepCollectionEquality().hash(lastSink) ^
      const DeepCollectionEquality().hash(blackExPosts) ^
      const DeepCollectionEquality().hash(endOfBlackExPosts) ^
      const DeepCollectionEquality().hash(entertainmentPosts) ^
      const DeepCollectionEquality().hash(endOfEntertainmentPosts) ^
      const DeepCollectionEquality().hash(featuredPost) ^
      const DeepCollectionEquality().hash(olderTrends) ^
      const DeepCollectionEquality().hash(endOfOlderTrends) ^
      const DeepCollectionEquality().hash(beautyPosts) ^
      const DeepCollectionEquality().hash(endOfBeautyPosts);

  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {@required ScrollController scrollController,
      bool isFetchingMore,
      @nullable BuiltList<Post> latestPosts,
      @nullable bool endOfLatestPosts,
      @nullable BuiltList<Taxonomy> categories,
      @nullable bool endOfCategories,
      @nullable BuiltList<Post> lastMonthPosts,
      @nullable bool endOfLastMonthPosts,
      @nullable ApiClientException<dynamic> failure,
      @nullable HomeEvent lastSink,
      @nullable BuiltList<Post> blackExPosts,
      @nullable bool endOfBlackExPosts,
      @nullable BuiltList<Post> entertainmentPosts,
      @nullable bool endOfEntertainmentPosts,
      @nullable Post featuredPost,
      @nullable BuiltList<Post> olderTrends,
      @nullable bool endOfOlderTrends,
      @nullable BuiltList<Post> beautyPosts,
      @nullable bool endOfBeautyPosts}) = _$_HomeState;

  @override
  ScrollController get scrollController;
  @override
  bool get isFetchingMore;
  @override
  @nullable
  BuiltList<Post> get latestPosts;
  @override
  @nullable
  bool get endOfLatestPosts;
  @override
  @nullable
  BuiltList<Taxonomy> get categories;
  @override
  @nullable
  bool get endOfCategories;
  @override
  @nullable
  BuiltList<Post> get lastMonthPosts;
  @override
  @nullable
  bool get endOfLastMonthPosts;
  @override
  @nullable
  ApiClientException<dynamic> get failure;
  @override
  @nullable
  HomeEvent get lastSink;
  @override
  @nullable
  BuiltList<Post> get blackExPosts;
  @override
  @nullable
  bool get endOfBlackExPosts;
  @override
  @nullable
  BuiltList<Post> get entertainmentPosts;
  @override
  @nullable
  bool get endOfEntertainmentPosts;
  @override
  @nullable
  Post get featuredPost;
  @override
  @nullable
  BuiltList<Post> get olderTrends;
  @override
  @nullable
  bool get endOfOlderTrends;
  @override
  @nullable
  BuiltList<Post> get beautyPosts;
  @override
  @nullable
  bool get endOfBeautyPosts;
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith;
}
