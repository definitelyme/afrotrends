// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'home_screen_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HomeScreenEventTearOff {
  const _$HomeScreenEventTearOff();

  _TopStories getTopStories({int nextPage = 1}) {
    return _TopStories(
      nextPage: nextPage,
    );
  }

  _GetPostsForThisWeek getPostsForThisWeek({@required String item}) {
    return _GetPostsForThisWeek(
      item: item,
    );
  }

  _GetOlderPosts getOlderPosts({@required String item}) {
    return _GetOlderPosts(
      item: item,
    );
  }
}

// ignore: unused_element
const $HomeScreenEvent = _$HomeScreenEventTearOff();

mixin _$HomeScreenEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getTopStories(int nextPage),
    @required Result getPostsForThisWeek(String item),
    @required Result getOlderPosts(String item),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getTopStories(int nextPage),
    Result getPostsForThisWeek(String item),
    Result getOlderPosts(String item),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getTopStories(_TopStories value),
    @required Result getPostsForThisWeek(_GetPostsForThisWeek value),
    @required Result getOlderPosts(_GetOlderPosts value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getTopStories(_TopStories value),
    Result getPostsForThisWeek(_GetPostsForThisWeek value),
    Result getOlderPosts(_GetOlderPosts value),
    @required Result orElse(),
  });
}

abstract class $HomeScreenEventCopyWith<$Res> {
  factory $HomeScreenEventCopyWith(
          HomeScreenEvent value, $Res Function(HomeScreenEvent) then) =
      _$HomeScreenEventCopyWithImpl<$Res>;
}

class _$HomeScreenEventCopyWithImpl<$Res>
    implements $HomeScreenEventCopyWith<$Res> {
  _$HomeScreenEventCopyWithImpl(this._value, this._then);

  final HomeScreenEvent _value;
  // ignore: unused_field
  final $Res Function(HomeScreenEvent) _then;
}

abstract class _$TopStoriesCopyWith<$Res> {
  factory _$TopStoriesCopyWith(
          _TopStories value, $Res Function(_TopStories) then) =
      __$TopStoriesCopyWithImpl<$Res>;
  $Res call({int nextPage});
}

class __$TopStoriesCopyWithImpl<$Res>
    extends _$HomeScreenEventCopyWithImpl<$Res>
    implements _$TopStoriesCopyWith<$Res> {
  __$TopStoriesCopyWithImpl(
      _TopStories _value, $Res Function(_TopStories) _then)
      : super(_value, (v) => _then(v as _TopStories));

  @override
  _TopStories get _value => super._value as _TopStories;

  @override
  $Res call({
    Object nextPage = freezed,
  }) {
    return _then(_TopStories(
      nextPage: nextPage == freezed ? _value.nextPage : nextPage as int,
    ));
  }
}

class _$_TopStories with DiagnosticableTreeMixin implements _TopStories {
  const _$_TopStories({this.nextPage = 1}) : assert(nextPage != null);

  @JsonKey(defaultValue: 1)
  @override
  final int nextPage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeScreenEvent.getTopStories(nextPage: $nextPage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeScreenEvent.getTopStories'))
      ..add(DiagnosticsProperty('nextPage', nextPage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TopStories &&
            (identical(other.nextPage, nextPage) ||
                const DeepCollectionEquality()
                    .equals(other.nextPage, nextPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nextPage);

  @override
  _$TopStoriesCopyWith<_TopStories> get copyWith =>
      __$TopStoriesCopyWithImpl<_TopStories>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getTopStories(int nextPage),
    @required Result getPostsForThisWeek(String item),
    @required Result getOlderPosts(String item),
  }) {
    assert(getTopStories != null);
    assert(getPostsForThisWeek != null);
    assert(getOlderPosts != null);
    return getTopStories(nextPage);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getTopStories(int nextPage),
    Result getPostsForThisWeek(String item),
    Result getOlderPosts(String item),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getTopStories != null) {
      return getTopStories(nextPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getTopStories(_TopStories value),
    @required Result getPostsForThisWeek(_GetPostsForThisWeek value),
    @required Result getOlderPosts(_GetOlderPosts value),
  }) {
    assert(getTopStories != null);
    assert(getPostsForThisWeek != null);
    assert(getOlderPosts != null);
    return getTopStories(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getTopStories(_TopStories value),
    Result getPostsForThisWeek(_GetPostsForThisWeek value),
    Result getOlderPosts(_GetOlderPosts value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getTopStories != null) {
      return getTopStories(this);
    }
    return orElse();
  }
}

abstract class _TopStories implements HomeScreenEvent {
  const factory _TopStories({int nextPage}) = _$_TopStories;

  int get nextPage;
  _$TopStoriesCopyWith<_TopStories> get copyWith;
}

abstract class _$GetPostsForThisWeekCopyWith<$Res> {
  factory _$GetPostsForThisWeekCopyWith(_GetPostsForThisWeek value,
          $Res Function(_GetPostsForThisWeek) then) =
      __$GetPostsForThisWeekCopyWithImpl<$Res>;
  $Res call({String item});
}

class __$GetPostsForThisWeekCopyWithImpl<$Res>
    extends _$HomeScreenEventCopyWithImpl<$Res>
    implements _$GetPostsForThisWeekCopyWith<$Res> {
  __$GetPostsForThisWeekCopyWithImpl(
      _GetPostsForThisWeek _value, $Res Function(_GetPostsForThisWeek) _then)
      : super(_value, (v) => _then(v as _GetPostsForThisWeek));

  @override
  _GetPostsForThisWeek get _value => super._value as _GetPostsForThisWeek;

  @override
  $Res call({
    Object item = freezed,
  }) {
    return _then(_GetPostsForThisWeek(
      item: item == freezed ? _value.item : item as String,
    ));
  }
}

class _$_GetPostsForThisWeek
    with DiagnosticableTreeMixin
    implements _GetPostsForThisWeek {
  const _$_GetPostsForThisWeek({@required this.item}) : assert(item != null);

  @override
  final String item;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeScreenEvent.getPostsForThisWeek(item: $item)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeScreenEvent.getPostsForThisWeek'))
      ..add(DiagnosticsProperty('item', item));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPostsForThisWeek &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(item);

  @override
  _$GetPostsForThisWeekCopyWith<_GetPostsForThisWeek> get copyWith =>
      __$GetPostsForThisWeekCopyWithImpl<_GetPostsForThisWeek>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getTopStories(int nextPage),
    @required Result getPostsForThisWeek(String item),
    @required Result getOlderPosts(String item),
  }) {
    assert(getTopStories != null);
    assert(getPostsForThisWeek != null);
    assert(getOlderPosts != null);
    return getPostsForThisWeek(item);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getTopStories(int nextPage),
    Result getPostsForThisWeek(String item),
    Result getOlderPosts(String item),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getPostsForThisWeek != null) {
      return getPostsForThisWeek(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getTopStories(_TopStories value),
    @required Result getPostsForThisWeek(_GetPostsForThisWeek value),
    @required Result getOlderPosts(_GetOlderPosts value),
  }) {
    assert(getTopStories != null);
    assert(getPostsForThisWeek != null);
    assert(getOlderPosts != null);
    return getPostsForThisWeek(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getTopStories(_TopStories value),
    Result getPostsForThisWeek(_GetPostsForThisWeek value),
    Result getOlderPosts(_GetOlderPosts value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getPostsForThisWeek != null) {
      return getPostsForThisWeek(this);
    }
    return orElse();
  }
}

abstract class _GetPostsForThisWeek implements HomeScreenEvent {
  const factory _GetPostsForThisWeek({@required String item}) =
      _$_GetPostsForThisWeek;

  String get item;
  _$GetPostsForThisWeekCopyWith<_GetPostsForThisWeek> get copyWith;
}

abstract class _$GetOlderPostsCopyWith<$Res> {
  factory _$GetOlderPostsCopyWith(
          _GetOlderPosts value, $Res Function(_GetOlderPosts) then) =
      __$GetOlderPostsCopyWithImpl<$Res>;
  $Res call({String item});
}

class __$GetOlderPostsCopyWithImpl<$Res>
    extends _$HomeScreenEventCopyWithImpl<$Res>
    implements _$GetOlderPostsCopyWith<$Res> {
  __$GetOlderPostsCopyWithImpl(
      _GetOlderPosts _value, $Res Function(_GetOlderPosts) _then)
      : super(_value, (v) => _then(v as _GetOlderPosts));

  @override
  _GetOlderPosts get _value => super._value as _GetOlderPosts;

  @override
  $Res call({
    Object item = freezed,
  }) {
    return _then(_GetOlderPosts(
      item: item == freezed ? _value.item : item as String,
    ));
  }
}

class _$_GetOlderPosts with DiagnosticableTreeMixin implements _GetOlderPosts {
  const _$_GetOlderPosts({@required this.item}) : assert(item != null);

  @override
  final String item;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeScreenEvent.getOlderPosts(item: $item)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeScreenEvent.getOlderPosts'))
      ..add(DiagnosticsProperty('item', item));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetOlderPosts &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(item);

  @override
  _$GetOlderPostsCopyWith<_GetOlderPosts> get copyWith =>
      __$GetOlderPostsCopyWithImpl<_GetOlderPosts>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getTopStories(int nextPage),
    @required Result getPostsForThisWeek(String item),
    @required Result getOlderPosts(String item),
  }) {
    assert(getTopStories != null);
    assert(getPostsForThisWeek != null);
    assert(getOlderPosts != null);
    return getOlderPosts(item);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getTopStories(int nextPage),
    Result getPostsForThisWeek(String item),
    Result getOlderPosts(String item),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getOlderPosts != null) {
      return getOlderPosts(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getTopStories(_TopStories value),
    @required Result getPostsForThisWeek(_GetPostsForThisWeek value),
    @required Result getOlderPosts(_GetOlderPosts value),
  }) {
    assert(getTopStories != null);
    assert(getPostsForThisWeek != null);
    assert(getOlderPosts != null);
    return getOlderPosts(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getTopStories(_TopStories value),
    Result getPostsForThisWeek(_GetPostsForThisWeek value),
    Result getOlderPosts(_GetOlderPosts value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getOlderPosts != null) {
      return getOlderPosts(this);
    }
    return orElse();
  }
}

abstract class _GetOlderPosts implements HomeScreenEvent {
  const factory _GetOlderPosts({@required String item}) = _$_GetOlderPosts;

  String get item;
  _$GetOlderPostsCopyWith<_GetOlderPosts> get copyWith;
}
