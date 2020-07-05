// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CategoryEventTearOff {
  const _$CategoryEventTearOff();

  _FetchRelatedPosts fetchRelatedPosts(Taxonomy category) {
    return _FetchRelatedPosts(
      category,
    );
  }
}

// ignore: unused_element
const $CategoryEvent = _$CategoryEventTearOff();

mixin _$CategoryEvent {
  Taxonomy get category;

  $CategoryEventCopyWith<CategoryEvent> get copyWith;
}

abstract class $CategoryEventCopyWith<$Res> {
  factory $CategoryEventCopyWith(
          CategoryEvent value, $Res Function(CategoryEvent) then) =
      _$CategoryEventCopyWithImpl<$Res>;
  $Res call({Taxonomy category});
}

class _$CategoryEventCopyWithImpl<$Res>
    implements $CategoryEventCopyWith<$Res> {
  _$CategoryEventCopyWithImpl(this._value, this._then);

  final CategoryEvent _value;
  // ignore: unused_field
  final $Res Function(CategoryEvent) _then;

  @override
  $Res call({
    Object category = freezed,
  }) {
    return _then(_value.copyWith(
      category: category == freezed ? _value.category : category as Taxonomy,
    ));
  }
}

abstract class _$FetchRelatedPostsCopyWith<$Res>
    implements $CategoryEventCopyWith<$Res> {
  factory _$FetchRelatedPostsCopyWith(
          _FetchRelatedPosts value, $Res Function(_FetchRelatedPosts) then) =
      __$FetchRelatedPostsCopyWithImpl<$Res>;
  @override
  $Res call({Taxonomy category});
}

class __$FetchRelatedPostsCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res>
    implements _$FetchRelatedPostsCopyWith<$Res> {
  __$FetchRelatedPostsCopyWithImpl(
      _FetchRelatedPosts _value, $Res Function(_FetchRelatedPosts) _then)
      : super(_value, (v) => _then(v as _FetchRelatedPosts));

  @override
  _FetchRelatedPosts get _value => super._value as _FetchRelatedPosts;

  @override
  $Res call({
    Object category = freezed,
  }) {
    return _then(_FetchRelatedPosts(
      category == freezed ? _value.category : category as Taxonomy,
    ));
  }
}

class _$_FetchRelatedPosts
    with DiagnosticableTreeMixin
    implements _FetchRelatedPosts {
  const _$_FetchRelatedPosts(this.category) : assert(category != null);

  @override
  final Taxonomy category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryEvent.fetchRelatedPosts(category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryEvent.fetchRelatedPosts'))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchRelatedPosts &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(category);

  @override
  _$FetchRelatedPostsCopyWith<_FetchRelatedPosts> get copyWith =>
      __$FetchRelatedPostsCopyWithImpl<_FetchRelatedPosts>(this, _$identity);
}

abstract class _FetchRelatedPosts implements CategoryEvent {
  const factory _FetchRelatedPosts(Taxonomy category) = _$_FetchRelatedPosts;

  @override
  Taxonomy get category;
  @override
  _$FetchRelatedPostsCopyWith<_FetchRelatedPosts> get copyWith;
}

class _$CategoryStateTearOff {
  const _$CategoryStateTearOff();

  _CategoryState call(
      {CarouselController controller, @nullable BuiltList<Post> posts}) {
    return _CategoryState(
      controller: controller,
      posts: posts,
    );
  }
}

// ignore: unused_element
const $CategoryState = _$CategoryStateTearOff();

mixin _$CategoryState {
  CarouselController get controller;
  @nullable
  BuiltList<Post> get posts;

  $CategoryStateCopyWith<CategoryState> get copyWith;
}

abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res>;
  $Res call({CarouselController controller, @nullable BuiltList<Post> posts});
}

class _$CategoryStateCopyWithImpl<$Res>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  final CategoryState _value;
  // ignore: unused_field
  final $Res Function(CategoryState) _then;

  @override
  $Res call({
    Object controller = freezed,
    Object posts = freezed,
  }) {
    return _then(_value.copyWith(
      controller: controller == freezed
          ? _value.controller
          : controller as CarouselController,
      posts: posts == freezed ? _value.posts : posts as BuiltList<Post>,
    ));
  }
}

abstract class _$CategoryStateCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$CategoryStateCopyWith(
          _CategoryState value, $Res Function(_CategoryState) then) =
      __$CategoryStateCopyWithImpl<$Res>;
  @override
  $Res call({CarouselController controller, @nullable BuiltList<Post> posts});
}

class __$CategoryStateCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res>
    implements _$CategoryStateCopyWith<$Res> {
  __$CategoryStateCopyWithImpl(
      _CategoryState _value, $Res Function(_CategoryState) _then)
      : super(_value, (v) => _then(v as _CategoryState));

  @override
  _CategoryState get _value => super._value as _CategoryState;

  @override
  $Res call({
    Object controller = freezed,
    Object posts = freezed,
  }) {
    return _then(_CategoryState(
      controller: controller == freezed
          ? _value.controller
          : controller as CarouselController,
      posts: posts == freezed ? _value.posts : posts as BuiltList<Post>,
    ));
  }
}

class _$_CategoryState with DiagnosticableTreeMixin implements _CategoryState {
  const _$_CategoryState({this.controller, @nullable this.posts});

  @override
  final CarouselController controller;
  @override
  @nullable
  final BuiltList<Post> posts;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryState(controller: $controller, posts: $posts)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryState'))
      ..add(DiagnosticsProperty('controller', controller))
      ..add(DiagnosticsProperty('posts', posts));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryState &&
            (identical(other.controller, controller) ||
                const DeepCollectionEquality()
                    .equals(other.controller, controller)) &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(controller) ^
      const DeepCollectionEquality().hash(posts);

  @override
  _$CategoryStateCopyWith<_CategoryState> get copyWith =>
      __$CategoryStateCopyWithImpl<_CategoryState>(this, _$identity);
}

abstract class _CategoryState implements CategoryState {
  const factory _CategoryState(
      {CarouselController controller,
      @nullable BuiltList<Post> posts}) = _$_CategoryState;

  @override
  CarouselController get controller;
  @override
  @nullable
  BuiltList<Post> get posts;
  @override
  _$CategoryStateCopyWith<_CategoryState> get copyWith;
}
