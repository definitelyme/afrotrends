// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'root_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RootEventTearOff {
  const _$RootEventTearOff();

  _UpdatePageIndex updatePageIndex(int index) {
    return _UpdatePageIndex(
      index,
    );
  }

  _UpdateBottomNavVisiblity updateBottomNavVisibility(bool isVisible) {
    return _UpdateBottomNavVisiblity(
      isVisible,
    );
  }
}

// ignore: unused_element
const $RootEvent = _$RootEventTearOff();

mixin _$RootEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updatePageIndex(int index),
    @required Result updateBottomNavVisibility(bool isVisible),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updatePageIndex(int index),
    Result updateBottomNavVisibility(bool isVisible),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updatePageIndex(_UpdatePageIndex value),
    @required Result updateBottomNavVisibility(_UpdateBottomNavVisiblity value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updatePageIndex(_UpdatePageIndex value),
    Result updateBottomNavVisibility(_UpdateBottomNavVisiblity value),
    @required Result orElse(),
  });
}

abstract class $RootEventCopyWith<$Res> {
  factory $RootEventCopyWith(RootEvent value, $Res Function(RootEvent) then) =
      _$RootEventCopyWithImpl<$Res>;
}

class _$RootEventCopyWithImpl<$Res> implements $RootEventCopyWith<$Res> {
  _$RootEventCopyWithImpl(this._value, this._then);

  final RootEvent _value;
  // ignore: unused_field
  final $Res Function(RootEvent) _then;
}

abstract class _$UpdatePageIndexCopyWith<$Res> {
  factory _$UpdatePageIndexCopyWith(
          _UpdatePageIndex value, $Res Function(_UpdatePageIndex) then) =
      __$UpdatePageIndexCopyWithImpl<$Res>;
  $Res call({int index});
}

class __$UpdatePageIndexCopyWithImpl<$Res> extends _$RootEventCopyWithImpl<$Res>
    implements _$UpdatePageIndexCopyWith<$Res> {
  __$UpdatePageIndexCopyWithImpl(
      _UpdatePageIndex _value, $Res Function(_UpdatePageIndex) _then)
      : super(_value, (v) => _then(v as _UpdatePageIndex));

  @override
  _UpdatePageIndex get _value => super._value as _UpdatePageIndex;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(_UpdatePageIndex(
      index == freezed ? _value.index : index as int,
    ));
  }
}

class _$_UpdatePageIndex
    with DiagnosticableTreeMixin
    implements _UpdatePageIndex {
  const _$_UpdatePageIndex(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RootEvent.updatePageIndex(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RootEvent.updatePageIndex'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdatePageIndex &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  _$UpdatePageIndexCopyWith<_UpdatePageIndex> get copyWith =>
      __$UpdatePageIndexCopyWithImpl<_UpdatePageIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updatePageIndex(int index),
    @required Result updateBottomNavVisibility(bool isVisible),
  }) {
    assert(updatePageIndex != null);
    assert(updateBottomNavVisibility != null);
    return updatePageIndex(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updatePageIndex(int index),
    Result updateBottomNavVisibility(bool isVisible),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updatePageIndex != null) {
      return updatePageIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updatePageIndex(_UpdatePageIndex value),
    @required Result updateBottomNavVisibility(_UpdateBottomNavVisiblity value),
  }) {
    assert(updatePageIndex != null);
    assert(updateBottomNavVisibility != null);
    return updatePageIndex(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updatePageIndex(_UpdatePageIndex value),
    Result updateBottomNavVisibility(_UpdateBottomNavVisiblity value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updatePageIndex != null) {
      return updatePageIndex(this);
    }
    return orElse();
  }
}

abstract class _UpdatePageIndex implements RootEvent {
  const factory _UpdatePageIndex(int index) = _$_UpdatePageIndex;

  int get index;
  _$UpdatePageIndexCopyWith<_UpdatePageIndex> get copyWith;
}

abstract class _$UpdateBottomNavVisiblityCopyWith<$Res> {
  factory _$UpdateBottomNavVisiblityCopyWith(_UpdateBottomNavVisiblity value,
          $Res Function(_UpdateBottomNavVisiblity) then) =
      __$UpdateBottomNavVisiblityCopyWithImpl<$Res>;
  $Res call({bool isVisible});
}

class __$UpdateBottomNavVisiblityCopyWithImpl<$Res>
    extends _$RootEventCopyWithImpl<$Res>
    implements _$UpdateBottomNavVisiblityCopyWith<$Res> {
  __$UpdateBottomNavVisiblityCopyWithImpl(_UpdateBottomNavVisiblity _value,
      $Res Function(_UpdateBottomNavVisiblity) _then)
      : super(_value, (v) => _then(v as _UpdateBottomNavVisiblity));

  @override
  _UpdateBottomNavVisiblity get _value =>
      super._value as _UpdateBottomNavVisiblity;

  @override
  $Res call({
    Object isVisible = freezed,
  }) {
    return _then(_UpdateBottomNavVisiblity(
      isVisible == freezed ? _value.isVisible : isVisible as bool,
    ));
  }
}

class _$_UpdateBottomNavVisiblity
    with DiagnosticableTreeMixin
    implements _UpdateBottomNavVisiblity {
  const _$_UpdateBottomNavVisiblity(this.isVisible) : assert(isVisible != null);

  @override
  final bool isVisible;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RootEvent.updateBottomNavVisibility(isVisible: $isVisible)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RootEvent.updateBottomNavVisibility'))
      ..add(DiagnosticsProperty('isVisible', isVisible));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateBottomNavVisiblity &&
            (identical(other.isVisible, isVisible) ||
                const DeepCollectionEquality()
                    .equals(other.isVisible, isVisible)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isVisible);

  @override
  _$UpdateBottomNavVisiblityCopyWith<_UpdateBottomNavVisiblity> get copyWith =>
      __$UpdateBottomNavVisiblityCopyWithImpl<_UpdateBottomNavVisiblity>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updatePageIndex(int index),
    @required Result updateBottomNavVisibility(bool isVisible),
  }) {
    assert(updatePageIndex != null);
    assert(updateBottomNavVisibility != null);
    return updateBottomNavVisibility(isVisible);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updatePageIndex(int index),
    Result updateBottomNavVisibility(bool isVisible),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateBottomNavVisibility != null) {
      return updateBottomNavVisibility(isVisible);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updatePageIndex(_UpdatePageIndex value),
    @required Result updateBottomNavVisibility(_UpdateBottomNavVisiblity value),
  }) {
    assert(updatePageIndex != null);
    assert(updateBottomNavVisibility != null);
    return updateBottomNavVisibility(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updatePageIndex(_UpdatePageIndex value),
    Result updateBottomNavVisibility(_UpdateBottomNavVisiblity value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateBottomNavVisibility != null) {
      return updateBottomNavVisibility(this);
    }
    return orElse();
  }
}

abstract class _UpdateBottomNavVisiblity implements RootEvent {
  const factory _UpdateBottomNavVisiblity(bool isVisible) =
      _$_UpdateBottomNavVisiblity;

  bool get isVisible;
  _$UpdateBottomNavVisiblityCopyWith<_UpdateBottomNavVisiblity> get copyWith;
}
