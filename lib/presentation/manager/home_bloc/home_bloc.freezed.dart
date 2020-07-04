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
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchLatestPosts(QueryBuilder queryBuilder),
    Result fetchCategories(QueryBuilder queryBuilder),
    Result fetchLastMonthPosts(QueryBuilder queryBuilder),
    Result sendTimeoutException(Failure failure, HomeEvent sink),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchLatestPosts(_FetchLatestPosts value),
    @required Result fetchCategories(_FetchCategories value),
    @required Result fetchLastMonthPosts(_FetchLastMonth value),
    @required Result sendTimeoutException(_SendTimeoutException value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchLatestPosts(_FetchLatestPosts value),
    Result fetchCategories(_FetchCategories value),
    Result fetchLastMonthPosts(_FetchLastMonth value),
    Result sendTimeoutException(_SendTimeoutException value),
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
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(fetchLastMonthPosts != null);
    assert(sendTimeoutException != null);
    return fetchLatestPosts(queryBuilder);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchLatestPosts(QueryBuilder queryBuilder),
    Result fetchCategories(QueryBuilder queryBuilder),
    Result fetchLastMonthPosts(QueryBuilder queryBuilder),
    Result sendTimeoutException(Failure failure, HomeEvent sink),
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
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(fetchLastMonthPosts != null);
    assert(sendTimeoutException != null);
    return fetchLatestPosts(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchLatestPosts(_FetchLatestPosts value),
    Result fetchCategories(_FetchCategories value),
    Result fetchLastMonthPosts(_FetchLastMonth value),
    Result sendTimeoutException(_SendTimeoutException value),
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
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(fetchLastMonthPosts != null);
    assert(sendTimeoutException != null);
    return fetchCategories(queryBuilder);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchLatestPosts(QueryBuilder queryBuilder),
    Result fetchCategories(QueryBuilder queryBuilder),
    Result fetchLastMonthPosts(QueryBuilder queryBuilder),
    Result sendTimeoutException(Failure failure, HomeEvent sink),
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
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(fetchLastMonthPosts != null);
    assert(sendTimeoutException != null);
    return fetchCategories(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchLatestPosts(_FetchLatestPosts value),
    Result fetchCategories(_FetchCategories value),
    Result fetchLastMonthPosts(_FetchLastMonth value),
    Result sendTimeoutException(_SendTimeoutException value),
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
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(fetchLastMonthPosts != null);
    assert(sendTimeoutException != null);
    return fetchLastMonthPosts(queryBuilder);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchLatestPosts(QueryBuilder queryBuilder),
    Result fetchCategories(QueryBuilder queryBuilder),
    Result fetchLastMonthPosts(QueryBuilder queryBuilder),
    Result sendTimeoutException(Failure failure, HomeEvent sink),
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
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(fetchLastMonthPosts != null);
    assert(sendTimeoutException != null);
    return fetchLastMonthPosts(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchLatestPosts(_FetchLatestPosts value),
    Result fetchCategories(_FetchCategories value),
    Result fetchLastMonthPosts(_FetchLastMonth value),
    Result sendTimeoutException(_SendTimeoutException value),
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
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(fetchLastMonthPosts != null);
    assert(sendTimeoutException != null);
    return sendTimeoutException(failure, sink);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchLatestPosts(QueryBuilder queryBuilder),
    Result fetchCategories(QueryBuilder queryBuilder),
    Result fetchLastMonthPosts(QueryBuilder queryBuilder),
    Result sendTimeoutException(Failure failure, HomeEvent sink),
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
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(fetchLastMonthPosts != null);
    assert(sendTimeoutException != null);
    return sendTimeoutException(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchLatestPosts(_FetchLatestPosts value),
    Result fetchCategories(_FetchCategories value),
    Result fetchLastMonthPosts(_FetchLastMonth value),
    Result sendTimeoutException(_SendTimeoutException value),
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

class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call(
      {@required ScrollController scrollController,
      @nullable BuiltList<Post> latestPosts,
      @nullable bool endOfLatestPosts,
      @nullable BuiltList<Taxonomy> categories,
      @nullable bool endOfCategories,
      @nullable BuiltList<Post> lastMonthPosts,
      @nullable bool endOfLastMonthPosts,
      @nullable ApiClientException<dynamic> failure,
      @nullable HomeEvent lastSink}) {
    return _HomeState(
      scrollController: scrollController,
      latestPosts: latestPosts,
      endOfLatestPosts: endOfLatestPosts,
      categories: categories,
      endOfCategories: endOfCategories,
      lastMonthPosts: lastMonthPosts,
      endOfLastMonthPosts: endOfLastMonthPosts,
      failure: failure,
      lastSink: lastSink,
    );
  }
}

// ignore: unused_element
const $HomeState = _$HomeStateTearOff();

mixin _$HomeState {
  ScrollController get scrollController;
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

  $HomeStateCopyWith<HomeState> get copyWith;
}

abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {ScrollController scrollController,
      @nullable BuiltList<Post> latestPosts,
      @nullable bool endOfLatestPosts,
      @nullable BuiltList<Taxonomy> categories,
      @nullable bool endOfCategories,
      @nullable BuiltList<Post> lastMonthPosts,
      @nullable bool endOfLastMonthPosts,
      @nullable ApiClientException<dynamic> failure,
      @nullable HomeEvent lastSink});

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
    Object latestPosts = freezed,
    Object endOfLatestPosts = freezed,
    Object categories = freezed,
    Object endOfCategories = freezed,
    Object lastMonthPosts = freezed,
    Object endOfLastMonthPosts = freezed,
    Object failure = freezed,
    Object lastSink = freezed,
  }) {
    return _then(_value.copyWith(
      scrollController: scrollController == freezed
          ? _value.scrollController
          : scrollController as ScrollController,
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
      @nullable BuiltList<Post> latestPosts,
      @nullable bool endOfLatestPosts,
      @nullable BuiltList<Taxonomy> categories,
      @nullable bool endOfCategories,
      @nullable BuiltList<Post> lastMonthPosts,
      @nullable bool endOfLastMonthPosts,
      @nullable ApiClientException<dynamic> failure,
      @nullable HomeEvent lastSink});

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
    Object latestPosts = freezed,
    Object endOfLatestPosts = freezed,
    Object categories = freezed,
    Object endOfCategories = freezed,
    Object lastMonthPosts = freezed,
    Object endOfLastMonthPosts = freezed,
    Object failure = freezed,
    Object lastSink = freezed,
  }) {
    return _then(_HomeState(
      scrollController: scrollController == freezed
          ? _value.scrollController
          : scrollController as ScrollController,
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
    ));
  }
}

class _$_HomeState with DiagnosticableTreeMixin implements _HomeState {
  const _$_HomeState(
      {@required this.scrollController,
      @nullable this.latestPosts,
      @nullable this.endOfLatestPosts,
      @nullable this.categories,
      @nullable this.endOfCategories,
      @nullable this.lastMonthPosts,
      @nullable this.endOfLastMonthPosts,
      @nullable this.failure,
      @nullable this.lastSink})
      : assert(scrollController != null);

  @override
  final ScrollController scrollController;
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(scrollController: $scrollController, latestPosts: $latestPosts, endOfLatestPosts: $endOfLatestPosts, categories: $categories, endOfCategories: $endOfCategories, lastMonthPosts: $lastMonthPosts, endOfLastMonthPosts: $endOfLastMonthPosts, failure: $failure, lastSink: $lastSink)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('scrollController', scrollController))
      ..add(DiagnosticsProperty('latestPosts', latestPosts))
      ..add(DiagnosticsProperty('endOfLatestPosts', endOfLatestPosts))
      ..add(DiagnosticsProperty('categories', categories))
      ..add(DiagnosticsProperty('endOfCategories', endOfCategories))
      ..add(DiagnosticsProperty('lastMonthPosts', lastMonthPosts))
      ..add(DiagnosticsProperty('endOfLastMonthPosts', endOfLastMonthPosts))
      ..add(DiagnosticsProperty('failure', failure))
      ..add(DiagnosticsProperty('lastSink', lastSink));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeState &&
            (identical(other.scrollController, scrollController) ||
                const DeepCollectionEquality()
                    .equals(other.scrollController, scrollController)) &&
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
                    .equals(other.lastSink, lastSink)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(scrollController) ^
      const DeepCollectionEquality().hash(latestPosts) ^
      const DeepCollectionEquality().hash(endOfLatestPosts) ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(endOfCategories) ^
      const DeepCollectionEquality().hash(lastMonthPosts) ^
      const DeepCollectionEquality().hash(endOfLastMonthPosts) ^
      const DeepCollectionEquality().hash(failure) ^
      const DeepCollectionEquality().hash(lastSink);

  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {@required ScrollController scrollController,
      @nullable BuiltList<Post> latestPosts,
      @nullable bool endOfLatestPosts,
      @nullable BuiltList<Taxonomy> categories,
      @nullable bool endOfCategories,
      @nullable BuiltList<Post> lastMonthPosts,
      @nullable bool endOfLastMonthPosts,
      @nullable ApiClientException<dynamic> failure,
      @nullable HomeEvent lastSink}) = _$_HomeState;

  @override
  ScrollController get scrollController;
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
  _$HomeStateCopyWith<_HomeState> get copyWith;
}
