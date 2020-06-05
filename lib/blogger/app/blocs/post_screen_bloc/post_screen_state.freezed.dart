// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'post_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PostScreenStateTearOff {
  const _$PostScreenStateTearOff();

  _PostScreenState call({bool isNavVisible = true}) {
    return _PostScreenState(
      isNavVisible: isNavVisible,
    );
  }
}

// ignore: unused_element
const $PostScreenState = _$PostScreenStateTearOff();

mixin _$PostScreenState {
  bool get isNavVisible;

  $PostScreenStateCopyWith<PostScreenState> get copyWith;
}

abstract class $PostScreenStateCopyWith<$Res> {
  factory $PostScreenStateCopyWith(
          PostScreenState value, $Res Function(PostScreenState) then) =
      _$PostScreenStateCopyWithImpl<$Res>;
  $Res call({bool isNavVisible});
}

class _$PostScreenStateCopyWithImpl<$Res>
    implements $PostScreenStateCopyWith<$Res> {
  _$PostScreenStateCopyWithImpl(this._value, this._then);

  final PostScreenState _value;
  // ignore: unused_field
  final $Res Function(PostScreenState) _then;

  @override
  $Res call({
    Object isNavVisible = freezed,
  }) {
    return _then(_value.copyWith(
      isNavVisible:
          isNavVisible == freezed ? _value.isNavVisible : isNavVisible as bool,
    ));
  }
}

abstract class _$PostScreenStateCopyWith<$Res>
    implements $PostScreenStateCopyWith<$Res> {
  factory _$PostScreenStateCopyWith(
          _PostScreenState value, $Res Function(_PostScreenState) then) =
      __$PostScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isNavVisible});
}

class __$PostScreenStateCopyWithImpl<$Res>
    extends _$PostScreenStateCopyWithImpl<$Res>
    implements _$PostScreenStateCopyWith<$Res> {
  __$PostScreenStateCopyWithImpl(
      _PostScreenState _value, $Res Function(_PostScreenState) _then)
      : super(_value, (v) => _then(v as _PostScreenState));

  @override
  _PostScreenState get _value => super._value as _PostScreenState;

  @override
  $Res call({
    Object isNavVisible = freezed,
  }) {
    return _then(_PostScreenState(
      isNavVisible:
          isNavVisible == freezed ? _value.isNavVisible : isNavVisible as bool,
    ));
  }
}

class _$_PostScreenState
    with DiagnosticableTreeMixin
    implements _PostScreenState {
  const _$_PostScreenState({this.isNavVisible = true})
      : assert(isNavVisible != null);

  @JsonKey(defaultValue: true)
  @override
  final bool isNavVisible;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostScreenState(isNavVisible: $isNavVisible)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostScreenState'))
      ..add(DiagnosticsProperty('isNavVisible', isNavVisible));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostScreenState &&
            (identical(other.isNavVisible, isNavVisible) ||
                const DeepCollectionEquality()
                    .equals(other.isNavVisible, isNavVisible)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isNavVisible);

  @override
  _$PostScreenStateCopyWith<_PostScreenState> get copyWith =>
      __$PostScreenStateCopyWithImpl<_PostScreenState>(this, _$identity);
}

abstract class _PostScreenState implements PostScreenState {
  const factory _PostScreenState({bool isNavVisible}) = _$_PostScreenState;

  @override
  bool get isNavVisible;
  @override
  _$PostScreenStateCopyWith<_PostScreenState> get copyWith;
}
