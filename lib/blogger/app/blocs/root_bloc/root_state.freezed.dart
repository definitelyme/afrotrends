// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'root_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RootStateTearOff {
  const _$RootStateTearOff();

  _RootState call(
      {int currentIndex = 0,
      bool bottomNavVisibility = true,
      ScrollController scrollController}) {
    return _RootState(
      currentIndex: currentIndex,
      bottomNavVisibility: bottomNavVisibility,
      scrollController: scrollController,
    );
  }
}

// ignore: unused_element
const $RootState = _$RootStateTearOff();

mixin _$RootState {
  int get currentIndex;
  bool get bottomNavVisibility;
  ScrollController get scrollController;

  $RootStateCopyWith<RootState> get copyWith;
}

abstract class $RootStateCopyWith<$Res> {
  factory $RootStateCopyWith(RootState value, $Res Function(RootState) then) =
      _$RootStateCopyWithImpl<$Res>;
  $Res call(
      {int currentIndex,
      bool bottomNavVisibility,
      ScrollController scrollController});
}

class _$RootStateCopyWithImpl<$Res> implements $RootStateCopyWith<$Res> {
  _$RootStateCopyWithImpl(this._value, this._then);

  final RootState _value;
  // ignore: unused_field
  final $Res Function(RootState) _then;

  @override
  $Res call({
    Object currentIndex = freezed,
    Object bottomNavVisibility = freezed,
    Object scrollController = freezed,
  }) {
    return _then(_value.copyWith(
      currentIndex:
          currentIndex == freezed ? _value.currentIndex : currentIndex as int,
      bottomNavVisibility: bottomNavVisibility == freezed
          ? _value.bottomNavVisibility
          : bottomNavVisibility as bool,
      scrollController: scrollController == freezed
          ? _value.scrollController
          : scrollController as ScrollController,
    ));
  }
}

abstract class _$RootStateCopyWith<$Res> implements $RootStateCopyWith<$Res> {
  factory _$RootStateCopyWith(
          _RootState value, $Res Function(_RootState) then) =
      __$RootStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int currentIndex,
      bool bottomNavVisibility,
      ScrollController scrollController});
}

class __$RootStateCopyWithImpl<$Res> extends _$RootStateCopyWithImpl<$Res>
    implements _$RootStateCopyWith<$Res> {
  __$RootStateCopyWithImpl(_RootState _value, $Res Function(_RootState) _then)
      : super(_value, (v) => _then(v as _RootState));

  @override
  _RootState get _value => super._value as _RootState;

  @override
  $Res call({
    Object currentIndex = freezed,
    Object bottomNavVisibility = freezed,
    Object scrollController = freezed,
  }) {
    return _then(_RootState(
      currentIndex:
          currentIndex == freezed ? _value.currentIndex : currentIndex as int,
      bottomNavVisibility: bottomNavVisibility == freezed
          ? _value.bottomNavVisibility
          : bottomNavVisibility as bool,
      scrollController: scrollController == freezed
          ? _value.scrollController
          : scrollController as ScrollController,
    ));
  }
}

class _$_RootState with DiagnosticableTreeMixin implements _RootState {
  const _$_RootState(
      {this.currentIndex = 0,
      this.bottomNavVisibility = true,
      this.scrollController})
      : assert(currentIndex != null),
        assert(bottomNavVisibility != null);

  @JsonKey(defaultValue: 0)
  @override
  final int currentIndex;
  @JsonKey(defaultValue: true)
  @override
  final bool bottomNavVisibility;
  @override
  final ScrollController scrollController;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RootState(currentIndex: $currentIndex, bottomNavVisibility: $bottomNavVisibility, scrollController: $scrollController)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RootState'))
      ..add(DiagnosticsProperty('currentIndex', currentIndex))
      ..add(DiagnosticsProperty('bottomNavVisibility', bottomNavVisibility))
      ..add(DiagnosticsProperty('scrollController', scrollController));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RootState &&
            (identical(other.currentIndex, currentIndex) ||
                const DeepCollectionEquality()
                    .equals(other.currentIndex, currentIndex)) &&
            (identical(other.bottomNavVisibility, bottomNavVisibility) ||
                const DeepCollectionEquality()
                    .equals(other.bottomNavVisibility, bottomNavVisibility)) &&
            (identical(other.scrollController, scrollController) ||
                const DeepCollectionEquality()
                    .equals(other.scrollController, scrollController)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentIndex) ^
      const DeepCollectionEquality().hash(bottomNavVisibility) ^
      const DeepCollectionEquality().hash(scrollController);

  @override
  _$RootStateCopyWith<_RootState> get copyWith =>
      __$RootStateCopyWithImpl<_RootState>(this, _$identity);
}

abstract class _RootState implements RootState {
  const factory _RootState(
      {int currentIndex,
      bool bottomNavVisibility,
      ScrollController scrollController}) = _$_RootState;

  @override
  int get currentIndex;
  @override
  bool get bottomNavVisibility;
  @override
  ScrollController get scrollController;
  @override
  _$RootStateCopyWith<_RootState> get copyWith;
}
