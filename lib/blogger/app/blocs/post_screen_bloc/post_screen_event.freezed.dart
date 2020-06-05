// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'post_screen_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PostScreenEventTearOff {
  const _$PostScreenEventTearOff();

  _OnScroll onScroll(bool bottomNavVisibility) {
    return _OnScroll(
      bottomNavVisibility,
    );
  }

  _OnBookmark onBookmark(Post post) {
    return _OnBookmark(
      post,
    );
  }
}

// ignore: unused_element
const $PostScreenEvent = _$PostScreenEventTearOff();

mixin _$PostScreenEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onScroll(bool bottomNavVisibility),
    @required Result onBookmark(Post post),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onScroll(bool bottomNavVisibility),
    Result onBookmark(Post post),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onScroll(_OnScroll value),
    @required Result onBookmark(_OnBookmark value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onScroll(_OnScroll value),
    Result onBookmark(_OnBookmark value),
    @required Result orElse(),
  });
}

abstract class $PostScreenEventCopyWith<$Res> {
  factory $PostScreenEventCopyWith(
          PostScreenEvent value, $Res Function(PostScreenEvent) then) =
      _$PostScreenEventCopyWithImpl<$Res>;
}

class _$PostScreenEventCopyWithImpl<$Res>
    implements $PostScreenEventCopyWith<$Res> {
  _$PostScreenEventCopyWithImpl(this._value, this._then);

  final PostScreenEvent _value;
  // ignore: unused_field
  final $Res Function(PostScreenEvent) _then;
}

abstract class _$OnScrollCopyWith<$Res> {
  factory _$OnScrollCopyWith(_OnScroll value, $Res Function(_OnScroll) then) =
      __$OnScrollCopyWithImpl<$Res>;
  $Res call({bool bottomNavVisibility});
}

class __$OnScrollCopyWithImpl<$Res> extends _$PostScreenEventCopyWithImpl<$Res>
    implements _$OnScrollCopyWith<$Res> {
  __$OnScrollCopyWithImpl(_OnScroll _value, $Res Function(_OnScroll) _then)
      : super(_value, (v) => _then(v as _OnScroll));

  @override
  _OnScroll get _value => super._value as _OnScroll;

  @override
  $Res call({
    Object bottomNavVisibility = freezed,
  }) {
    return _then(_OnScroll(
      bottomNavVisibility == freezed
          ? _value.bottomNavVisibility
          : bottomNavVisibility as bool,
    ));
  }
}

class _$_OnScroll with DiagnosticableTreeMixin implements _OnScroll {
  const _$_OnScroll(this.bottomNavVisibility)
      : assert(bottomNavVisibility != null);

  @override
  final bool bottomNavVisibility;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostScreenEvent.onScroll(bottomNavVisibility: $bottomNavVisibility)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostScreenEvent.onScroll'))
      ..add(DiagnosticsProperty('bottomNavVisibility', bottomNavVisibility));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnScroll &&
            (identical(other.bottomNavVisibility, bottomNavVisibility) ||
                const DeepCollectionEquality()
                    .equals(other.bottomNavVisibility, bottomNavVisibility)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bottomNavVisibility);

  @override
  _$OnScrollCopyWith<_OnScroll> get copyWith =>
      __$OnScrollCopyWithImpl<_OnScroll>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onScroll(bool bottomNavVisibility),
    @required Result onBookmark(Post post),
  }) {
    assert(onScroll != null);
    assert(onBookmark != null);
    return onScroll(bottomNavVisibility);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onScroll(bool bottomNavVisibility),
    Result onBookmark(Post post),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onScroll != null) {
      return onScroll(bottomNavVisibility);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onScroll(_OnScroll value),
    @required Result onBookmark(_OnBookmark value),
  }) {
    assert(onScroll != null);
    assert(onBookmark != null);
    return onScroll(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onScroll(_OnScroll value),
    Result onBookmark(_OnBookmark value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onScroll != null) {
      return onScroll(this);
    }
    return orElse();
  }
}

abstract class _OnScroll implements PostScreenEvent {
  const factory _OnScroll(bool bottomNavVisibility) = _$_OnScroll;

  bool get bottomNavVisibility;
  _$OnScrollCopyWith<_OnScroll> get copyWith;
}

abstract class _$OnBookmarkCopyWith<$Res> {
  factory _$OnBookmarkCopyWith(
          _OnBookmark value, $Res Function(_OnBookmark) then) =
      __$OnBookmarkCopyWithImpl<$Res>;
  $Res call({Post post});
}

class __$OnBookmarkCopyWithImpl<$Res>
    extends _$PostScreenEventCopyWithImpl<$Res>
    implements _$OnBookmarkCopyWith<$Res> {
  __$OnBookmarkCopyWithImpl(
      _OnBookmark _value, $Res Function(_OnBookmark) _then)
      : super(_value, (v) => _then(v as _OnBookmark));

  @override
  _OnBookmark get _value => super._value as _OnBookmark;

  @override
  $Res call({
    Object post = freezed,
  }) {
    return _then(_OnBookmark(
      post == freezed ? _value.post : post as Post,
    ));
  }
}

class _$_OnBookmark with DiagnosticableTreeMixin implements _OnBookmark {
  const _$_OnBookmark(this.post) : assert(post != null);

  @override
  final Post post;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostScreenEvent.onBookmark(post: $post)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostScreenEvent.onBookmark'))
      ..add(DiagnosticsProperty('post', post));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnBookmark &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(post);

  @override
  _$OnBookmarkCopyWith<_OnBookmark> get copyWith =>
      __$OnBookmarkCopyWithImpl<_OnBookmark>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onScroll(bool bottomNavVisibility),
    @required Result onBookmark(Post post),
  }) {
    assert(onScroll != null);
    assert(onBookmark != null);
    return onBookmark(post);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onScroll(bool bottomNavVisibility),
    Result onBookmark(Post post),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onBookmark != null) {
      return onBookmark(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onScroll(_OnScroll value),
    @required Result onBookmark(_OnBookmark value),
  }) {
    assert(onScroll != null);
    assert(onBookmark != null);
    return onBookmark(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onScroll(_OnScroll value),
    Result onBookmark(_OnBookmark value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onBookmark != null) {
      return onBookmark(this);
    }
    return orElse();
  }
}

abstract class _OnBookmark implements PostScreenEvent {
  const factory _OnBookmark(Post post) = _$_OnBookmark;

  Post get post;
  _$OnBookmarkCopyWith<_OnBookmark> get copyWith;
}
