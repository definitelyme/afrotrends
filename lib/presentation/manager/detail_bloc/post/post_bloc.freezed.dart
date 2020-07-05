// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PostBlocEventTearOff {
  const _$PostBlocEventTearOff();

  _FetchPostComments fetchPostComments(Post post) {
    return _FetchPostComments(
      post,
    );
  }

  _GetPostInfo getExtraPostInfo(String id) {
    return _GetPostInfo(
      id,
    );
  }
}

// ignore: unused_element
const $PostBlocEvent = _$PostBlocEventTearOff();

mixin _$PostBlocEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchPostComments(Post post),
    @required Result getExtraPostInfo(String id),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchPostComments(Post post),
    Result getExtraPostInfo(String id),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchPostComments(_FetchPostComments value),
    @required Result getExtraPostInfo(_GetPostInfo value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchPostComments(_FetchPostComments value),
    Result getExtraPostInfo(_GetPostInfo value),
    @required Result orElse(),
  });
}

abstract class $PostBlocEventCopyWith<$Res> {
  factory $PostBlocEventCopyWith(
          PostBlocEvent value, $Res Function(PostBlocEvent) then) =
      _$PostBlocEventCopyWithImpl<$Res>;
}

class _$PostBlocEventCopyWithImpl<$Res>
    implements $PostBlocEventCopyWith<$Res> {
  _$PostBlocEventCopyWithImpl(this._value, this._then);

  final PostBlocEvent _value;
  // ignore: unused_field
  final $Res Function(PostBlocEvent) _then;
}

abstract class _$FetchPostCommentsCopyWith<$Res> {
  factory _$FetchPostCommentsCopyWith(
          _FetchPostComments value, $Res Function(_FetchPostComments) then) =
      __$FetchPostCommentsCopyWithImpl<$Res>;
  $Res call({Post post});
}

class __$FetchPostCommentsCopyWithImpl<$Res>
    extends _$PostBlocEventCopyWithImpl<$Res>
    implements _$FetchPostCommentsCopyWith<$Res> {
  __$FetchPostCommentsCopyWithImpl(
      _FetchPostComments _value, $Res Function(_FetchPostComments) _then)
      : super(_value, (v) => _then(v as _FetchPostComments));

  @override
  _FetchPostComments get _value => super._value as _FetchPostComments;

  @override
  $Res call({
    Object post = freezed,
  }) {
    return _then(_FetchPostComments(
      post == freezed ? _value.post : post as Post,
    ));
  }
}

class _$_FetchPostComments
    with DiagnosticableTreeMixin
    implements _FetchPostComments {
  const _$_FetchPostComments(this.post) : assert(post != null);

  @override
  final Post post;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostBlocEvent.fetchPostComments(post: $post)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostBlocEvent.fetchPostComments'))
      ..add(DiagnosticsProperty('post', post));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchPostComments &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(post);

  @override
  _$FetchPostCommentsCopyWith<_FetchPostComments> get copyWith =>
      __$FetchPostCommentsCopyWithImpl<_FetchPostComments>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchPostComments(Post post),
    @required Result getExtraPostInfo(String id),
  }) {
    assert(fetchPostComments != null);
    assert(getExtraPostInfo != null);
    return fetchPostComments(post);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchPostComments(Post post),
    Result getExtraPostInfo(String id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchPostComments != null) {
      return fetchPostComments(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchPostComments(_FetchPostComments value),
    @required Result getExtraPostInfo(_GetPostInfo value),
  }) {
    assert(fetchPostComments != null);
    assert(getExtraPostInfo != null);
    return fetchPostComments(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchPostComments(_FetchPostComments value),
    Result getExtraPostInfo(_GetPostInfo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchPostComments != null) {
      return fetchPostComments(this);
    }
    return orElse();
  }
}

abstract class _FetchPostComments implements PostBlocEvent {
  const factory _FetchPostComments(Post post) = _$_FetchPostComments;

  Post get post;
  _$FetchPostCommentsCopyWith<_FetchPostComments> get copyWith;
}

abstract class _$GetPostInfoCopyWith<$Res> {
  factory _$GetPostInfoCopyWith(
          _GetPostInfo value, $Res Function(_GetPostInfo) then) =
      __$GetPostInfoCopyWithImpl<$Res>;
  $Res call({String id});
}

class __$GetPostInfoCopyWithImpl<$Res> extends _$PostBlocEventCopyWithImpl<$Res>
    implements _$GetPostInfoCopyWith<$Res> {
  __$GetPostInfoCopyWithImpl(
      _GetPostInfo _value, $Res Function(_GetPostInfo) _then)
      : super(_value, (v) => _then(v as _GetPostInfo));

  @override
  _GetPostInfo get _value => super._value as _GetPostInfo;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_GetPostInfo(
      id == freezed ? _value.id : id as String,
    ));
  }
}

class _$_GetPostInfo with DiagnosticableTreeMixin implements _GetPostInfo {
  const _$_GetPostInfo(this.id) : assert(id != null);

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostBlocEvent.getExtraPostInfo(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostBlocEvent.getExtraPostInfo'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPostInfo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  _$GetPostInfoCopyWith<_GetPostInfo> get copyWith =>
      __$GetPostInfoCopyWithImpl<_GetPostInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchPostComments(Post post),
    @required Result getExtraPostInfo(String id),
  }) {
    assert(fetchPostComments != null);
    assert(getExtraPostInfo != null);
    return getExtraPostInfo(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchPostComments(Post post),
    Result getExtraPostInfo(String id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getExtraPostInfo != null) {
      return getExtraPostInfo(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchPostComments(_FetchPostComments value),
    @required Result getExtraPostInfo(_GetPostInfo value),
  }) {
    assert(fetchPostComments != null);
    assert(getExtraPostInfo != null);
    return getExtraPostInfo(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchPostComments(_FetchPostComments value),
    Result getExtraPostInfo(_GetPostInfo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getExtraPostInfo != null) {
      return getExtraPostInfo(this);
    }
    return orElse();
  }
}

abstract class _GetPostInfo implements PostBlocEvent {
  const factory _GetPostInfo(String id) = _$_GetPostInfo;

  String get id;
  _$GetPostInfoCopyWith<_GetPostInfo> get copyWith;
}

class _$PostBlocStateTearOff {
  const _$PostBlocStateTearOff();

  _PostBlocState call(
      {@nullable String heroTag,
      @nullable Post post,
      @nullable BuiltList<Comment> comments}) {
    return _PostBlocState(
      heroTag: heroTag,
      post: post,
      comments: comments,
    );
  }
}

// ignore: unused_element
const $PostBlocState = _$PostBlocStateTearOff();

mixin _$PostBlocState {
  @nullable
  String get heroTag;
  @nullable
  Post get post;
  @nullable
  BuiltList<Comment> get comments;

  $PostBlocStateCopyWith<PostBlocState> get copyWith;
}

abstract class $PostBlocStateCopyWith<$Res> {
  factory $PostBlocStateCopyWith(
          PostBlocState value, $Res Function(PostBlocState) then) =
      _$PostBlocStateCopyWithImpl<$Res>;
  $Res call(
      {@nullable String heroTag,
      @nullable Post post,
      @nullable BuiltList<Comment> comments});
}

class _$PostBlocStateCopyWithImpl<$Res>
    implements $PostBlocStateCopyWith<$Res> {
  _$PostBlocStateCopyWithImpl(this._value, this._then);

  final PostBlocState _value;
  // ignore: unused_field
  final $Res Function(PostBlocState) _then;

  @override
  $Res call({
    Object heroTag = freezed,
    Object post = freezed,
    Object comments = freezed,
  }) {
    return _then(_value.copyWith(
      heroTag: heroTag == freezed ? _value.heroTag : heroTag as String,
      post: post == freezed ? _value.post : post as Post,
      comments: comments == freezed
          ? _value.comments
          : comments as BuiltList<Comment>,
    ));
  }
}

abstract class _$PostBlocStateCopyWith<$Res>
    implements $PostBlocStateCopyWith<$Res> {
  factory _$PostBlocStateCopyWith(
          _PostBlocState value, $Res Function(_PostBlocState) then) =
      __$PostBlocStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable String heroTag,
      @nullable Post post,
      @nullable BuiltList<Comment> comments});
}

class __$PostBlocStateCopyWithImpl<$Res>
    extends _$PostBlocStateCopyWithImpl<$Res>
    implements _$PostBlocStateCopyWith<$Res> {
  __$PostBlocStateCopyWithImpl(
      _PostBlocState _value, $Res Function(_PostBlocState) _then)
      : super(_value, (v) => _then(v as _PostBlocState));

  @override
  _PostBlocState get _value => super._value as _PostBlocState;

  @override
  $Res call({
    Object heroTag = freezed,
    Object post = freezed,
    Object comments = freezed,
  }) {
    return _then(_PostBlocState(
      heroTag: heroTag == freezed ? _value.heroTag : heroTag as String,
      post: post == freezed ? _value.post : post as Post,
      comments: comments == freezed
          ? _value.comments
          : comments as BuiltList<Comment>,
    ));
  }
}

class _$_PostBlocState with DiagnosticableTreeMixin implements _PostBlocState {
  const _$_PostBlocState(
      {@nullable this.heroTag, @nullable this.post, @nullable this.comments});

  @override
  @nullable
  final String heroTag;
  @override
  @nullable
  final Post post;
  @override
  @nullable
  final BuiltList<Comment> comments;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostBlocState(heroTag: $heroTag, post: $post, comments: $comments)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostBlocState'))
      ..add(DiagnosticsProperty('heroTag', heroTag))
      ..add(DiagnosticsProperty('post', post))
      ..add(DiagnosticsProperty('comments', comments));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostBlocState &&
            (identical(other.heroTag, heroTag) ||
                const DeepCollectionEquality()
                    .equals(other.heroTag, heroTag)) &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(heroTag) ^
      const DeepCollectionEquality().hash(post) ^
      const DeepCollectionEquality().hash(comments);

  @override
  _$PostBlocStateCopyWith<_PostBlocState> get copyWith =>
      __$PostBlocStateCopyWithImpl<_PostBlocState>(this, _$identity);
}

abstract class _PostBlocState implements PostBlocState {
  const factory _PostBlocState(
      {@nullable String heroTag,
      @nullable Post post,
      @nullable BuiltList<Comment> comments}) = _$_PostBlocState;

  @override
  @nullable
  String get heroTag;
  @override
  @nullable
  Post get post;
  @override
  @nullable
  BuiltList<Comment> get comments;
  @override
  _$PostBlocStateCopyWith<_PostBlocState> get copyWith;
}
