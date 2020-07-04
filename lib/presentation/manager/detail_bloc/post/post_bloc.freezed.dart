// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PostBlocEventTearOff {
  const _$PostBlocEventTearOff();

  _GetPostInfo getExtraPostInfo(String id) {
    return _GetPostInfo(
      id,
    );
  }
}

// ignore: unused_element
const $PostBlocEvent = _$PostBlocEventTearOff();

mixin _$PostBlocEvent {
  String get id;

  $PostBlocEventCopyWith<PostBlocEvent> get copyWith;
}

abstract class $PostBlocEventCopyWith<$Res> {
  factory $PostBlocEventCopyWith(
          PostBlocEvent value, $Res Function(PostBlocEvent) then) =
      _$PostBlocEventCopyWithImpl<$Res>;
  $Res call({String id});
}

class _$PostBlocEventCopyWithImpl<$Res>
    implements $PostBlocEventCopyWith<$Res> {
  _$PostBlocEventCopyWithImpl(this._value, this._then);

  final PostBlocEvent _value;
  // ignore: unused_field
  final $Res Function(PostBlocEvent) _then;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

abstract class _$GetPostInfoCopyWith<$Res>
    implements $PostBlocEventCopyWith<$Res> {
  factory _$GetPostInfoCopyWith(
          _GetPostInfo value, $Res Function(_GetPostInfo) then) =
      __$GetPostInfoCopyWithImpl<$Res>;
  @override
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
}

abstract class _GetPostInfo implements PostBlocEvent {
  const factory _GetPostInfo(String id) = _$_GetPostInfo;

  @override
  String get id;
  @override
  _$GetPostInfoCopyWith<_GetPostInfo> get copyWith;
}

class _$PostBlocStateTearOff {
  const _$PostBlocStateTearOff();

  _PostBlocState call({String heroTag, Post post}) {
    return _PostBlocState(
      heroTag: heroTag,
      post: post,
    );
  }
}

// ignore: unused_element
const $PostBlocState = _$PostBlocStateTearOff();

mixin _$PostBlocState {
  String get heroTag;
  Post get post;

  $PostBlocStateCopyWith<PostBlocState> get copyWith;
}

abstract class $PostBlocStateCopyWith<$Res> {
  factory $PostBlocStateCopyWith(
          PostBlocState value, $Res Function(PostBlocState) then) =
      _$PostBlocStateCopyWithImpl<$Res>;
  $Res call({String heroTag, Post post});
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
  }) {
    return _then(_value.copyWith(
      heroTag: heroTag == freezed ? _value.heroTag : heroTag as String,
      post: post == freezed ? _value.post : post as Post,
    ));
  }
}

abstract class _$PostBlocStateCopyWith<$Res>
    implements $PostBlocStateCopyWith<$Res> {
  factory _$PostBlocStateCopyWith(
          _PostBlocState value, $Res Function(_PostBlocState) then) =
      __$PostBlocStateCopyWithImpl<$Res>;
  @override
  $Res call({String heroTag, Post post});
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
  }) {
    return _then(_PostBlocState(
      heroTag: heroTag == freezed ? _value.heroTag : heroTag as String,
      post: post == freezed ? _value.post : post as Post,
    ));
  }
}

class _$_PostBlocState with DiagnosticableTreeMixin implements _PostBlocState {
  const _$_PostBlocState({this.heroTag, this.post});

  @override
  final String heroTag;
  @override
  final Post post;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostBlocState(heroTag: $heroTag, post: $post)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostBlocState'))
      ..add(DiagnosticsProperty('heroTag', heroTag))
      ..add(DiagnosticsProperty('post', post));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostBlocState &&
            (identical(other.heroTag, heroTag) ||
                const DeepCollectionEquality()
                    .equals(other.heroTag, heroTag)) &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(heroTag) ^
      const DeepCollectionEquality().hash(post);

  @override
  _$PostBlocStateCopyWith<_PostBlocState> get copyWith =>
      __$PostBlocStateCopyWithImpl<_PostBlocState>(this, _$identity);
}

abstract class _PostBlocState implements PostBlocState {
  const factory _PostBlocState({String heroTag, Post post}) = _$_PostBlocState;

  @override
  String get heroTag;
  @override
  Post get post;
  @override
  _$PostBlocStateCopyWith<_PostBlocState> get copyWith;
}
