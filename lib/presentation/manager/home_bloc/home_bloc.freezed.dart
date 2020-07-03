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

  _SendTimeoutException sendTimeoutException({Failure failure}) {
    return _SendTimeoutException(
      failure: failure,
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
    @required Result sendTimeoutException(Failure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchLatestPosts(QueryBuilder queryBuilder),
    Result fetchCategories(QueryBuilder queryBuilder),
    Result sendTimeoutException(Failure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchLatestPosts(_FetchLatestPosts value),
    @required Result fetchCategories(_FetchCategories value),
    @required Result sendTimeoutException(_SendTimeoutException value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchLatestPosts(_FetchLatestPosts value),
    Result fetchCategories(_FetchCategories value),
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
    @required Result sendTimeoutException(Failure failure),
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(sendTimeoutException != null);
    return fetchLatestPosts(queryBuilder);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchLatestPosts(QueryBuilder queryBuilder),
    Result fetchCategories(QueryBuilder queryBuilder),
    Result sendTimeoutException(Failure failure),
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
    @required Result sendTimeoutException(_SendTimeoutException value),
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(sendTimeoutException != null);
    return fetchLatestPosts(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchLatestPosts(_FetchLatestPosts value),
    Result fetchCategories(_FetchCategories value),
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
    @required Result sendTimeoutException(Failure failure),
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(sendTimeoutException != null);
    return fetchCategories(queryBuilder);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchLatestPosts(QueryBuilder queryBuilder),
    Result fetchCategories(QueryBuilder queryBuilder),
    Result sendTimeoutException(Failure failure),
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
    @required Result sendTimeoutException(_SendTimeoutException value),
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(sendTimeoutException != null);
    return fetchCategories(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchLatestPosts(_FetchLatestPosts value),
    Result fetchCategories(_FetchCategories value),
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

abstract class _$SendTimeoutExceptionCopyWith<$Res> {
  factory _$SendTimeoutExceptionCopyWith(_SendTimeoutException value,
          $Res Function(_SendTimeoutException) then) =
      __$SendTimeoutExceptionCopyWithImpl<$Res>;
  $Res call({Failure failure});
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
  }) {
    return _then(_SendTimeoutException(
      failure: failure == freezed ? _value.failure : failure as Failure,
    ));
  }
}

class _$_SendTimeoutException
    with DiagnosticableTreeMixin
    implements _SendTimeoutException {
  const _$_SendTimeoutException({this.failure});

  @override
  final Failure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.sendTimeoutException(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.sendTimeoutException'))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SendTimeoutException &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$SendTimeoutExceptionCopyWith<_SendTimeoutException> get copyWith =>
      __$SendTimeoutExceptionCopyWithImpl<_SendTimeoutException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchLatestPosts(QueryBuilder queryBuilder),
    @required Result fetchCategories(QueryBuilder queryBuilder),
    @required Result sendTimeoutException(Failure failure),
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(sendTimeoutException != null);
    return sendTimeoutException(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchLatestPosts(QueryBuilder queryBuilder),
    Result fetchCategories(QueryBuilder queryBuilder),
    Result sendTimeoutException(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendTimeoutException != null) {
      return sendTimeoutException(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchLatestPosts(_FetchLatestPosts value),
    @required Result fetchCategories(_FetchCategories value),
    @required Result sendTimeoutException(_SendTimeoutException value),
  }) {
    assert(fetchLatestPosts != null);
    assert(fetchCategories != null);
    assert(sendTimeoutException != null);
    return sendTimeoutException(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchLatestPosts(_FetchLatestPosts value),
    Result fetchCategories(_FetchCategories value),
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
  const factory _SendTimeoutException({Failure failure}) =
      _$_SendTimeoutException;

  Failure get failure;
  _$SendTimeoutExceptionCopyWith<_SendTimeoutException> get copyWith;
}

class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call(
      {@nullable BuiltList<Post> latestPosts,
      @nullable ApiClientException<dynamic> failure,
      @nullable bool endOfLatestPosts}) {
    return _HomeState(
      latestPosts: latestPosts,
      failure: failure,
      endOfLatestPosts: endOfLatestPosts,
    );
  }
}

// ignore: unused_element
const $HomeState = _$HomeStateTearOff();

mixin _$HomeState {
  @nullable
  BuiltList<Post> get latestPosts;
  @nullable
  ApiClientException<dynamic> get failure;
  @nullable
  bool get endOfLatestPosts;

  $HomeStateCopyWith<HomeState> get copyWith;
}

abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {@nullable BuiltList<Post> latestPosts,
      @nullable ApiClientException<dynamic> failure,
      @nullable bool endOfLatestPosts});
}

class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object latestPosts = freezed,
    Object failure = freezed,
    Object endOfLatestPosts = freezed,
  }) {
    return _then(_value.copyWith(
      latestPosts: latestPosts == freezed
          ? _value.latestPosts
          : latestPosts as BuiltList<Post>,
      failure: failure == freezed
          ? _value.failure
          : failure as ApiClientException<dynamic>,
      endOfLatestPosts: endOfLatestPosts == freezed
          ? _value.endOfLatestPosts
          : endOfLatestPosts as bool,
    ));
  }
}

abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable BuiltList<Post> latestPosts,
      @nullable ApiClientException<dynamic> failure,
      @nullable bool endOfLatestPosts});
}

class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object latestPosts = freezed,
    Object failure = freezed,
    Object endOfLatestPosts = freezed,
  }) {
    return _then(_HomeState(
      latestPosts: latestPosts == freezed
          ? _value.latestPosts
          : latestPosts as BuiltList<Post>,
      failure: failure == freezed
          ? _value.failure
          : failure as ApiClientException<dynamic>,
      endOfLatestPosts: endOfLatestPosts == freezed
          ? _value.endOfLatestPosts
          : endOfLatestPosts as bool,
    ));
  }
}

class _$_HomeState with DiagnosticableTreeMixin implements _HomeState {
  const _$_HomeState(
      {@nullable this.latestPosts,
      @nullable this.failure,
      @nullable this.endOfLatestPosts});

  @override
  @nullable
  final BuiltList<Post> latestPosts;
  @override
  @nullable
  final ApiClientException<dynamic> failure;
  @override
  @nullable
  final bool endOfLatestPosts;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(latestPosts: $latestPosts, failure: $failure, endOfLatestPosts: $endOfLatestPosts)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('latestPosts', latestPosts))
      ..add(DiagnosticsProperty('failure', failure))
      ..add(DiagnosticsProperty('endOfLatestPosts', endOfLatestPosts));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeState &&
            (identical(other.latestPosts, latestPosts) ||
                const DeepCollectionEquality()
                    .equals(other.latestPosts, latestPosts)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality()
                    .equals(other.failure, failure)) &&
            (identical(other.endOfLatestPosts, endOfLatestPosts) ||
                const DeepCollectionEquality()
                    .equals(other.endOfLatestPosts, endOfLatestPosts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(latestPosts) ^
      const DeepCollectionEquality().hash(failure) ^
      const DeepCollectionEquality().hash(endOfLatestPosts);

  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {@nullable BuiltList<Post> latestPosts,
      @nullable ApiClientException<dynamic> failure,
      @nullable bool endOfLatestPosts}) = _$_HomeState;

  @override
  @nullable
  BuiltList<Post> get latestPosts;
  @override
  @nullable
  ApiClientException<dynamic> get failure;
  @override
  @nullable
  bool get endOfLatestPosts;
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith;
}
