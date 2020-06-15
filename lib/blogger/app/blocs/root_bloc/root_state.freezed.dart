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
      ScrollController scrollController,
      bool hasInternetConnection = false,
      bool fcmIsConfigured = false,
      Map<String, dynamic> notification}) {
    return _RootState(
      currentIndex: currentIndex,
      bottomNavVisibility: bottomNavVisibility,
      scrollController: scrollController,
      hasInternetConnection: hasInternetConnection,
      fcmIsConfigured: fcmIsConfigured,
      notification: notification,
    );
  }
}

// ignore: unused_element
const $RootState = _$RootStateTearOff();

mixin _$RootState {
  int get currentIndex;
  bool get bottomNavVisibility;
  ScrollController get scrollController;
  bool get hasInternetConnection;
  bool get fcmIsConfigured;
  Map<String, dynamic> get notification;

  $RootStateCopyWith<RootState> get copyWith;
}

abstract class $RootStateCopyWith<$Res> {
  factory $RootStateCopyWith(RootState value, $Res Function(RootState) then) =
      _$RootStateCopyWithImpl<$Res>;
  $Res call(
      {int currentIndex,
      bool bottomNavVisibility,
      ScrollController scrollController,
      bool hasInternetConnection,
      bool fcmIsConfigured,
      Map<String, dynamic> notification});
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
    Object hasInternetConnection = freezed,
    Object fcmIsConfigured = freezed,
    Object notification = freezed,
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
      hasInternetConnection: hasInternetConnection == freezed
          ? _value.hasInternetConnection
          : hasInternetConnection as bool,
      fcmIsConfigured: fcmIsConfigured == freezed
          ? _value.fcmIsConfigured
          : fcmIsConfigured as bool,
      notification: notification == freezed
          ? _value.notification
          : notification as Map<String, dynamic>,
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
      ScrollController scrollController,
      bool hasInternetConnection,
      bool fcmIsConfigured,
      Map<String, dynamic> notification});
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
    Object hasInternetConnection = freezed,
    Object fcmIsConfigured = freezed,
    Object notification = freezed,
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
      hasInternetConnection: hasInternetConnection == freezed
          ? _value.hasInternetConnection
          : hasInternetConnection as bool,
      fcmIsConfigured: fcmIsConfigured == freezed
          ? _value.fcmIsConfigured
          : fcmIsConfigured as bool,
      notification: notification == freezed
          ? _value.notification
          : notification as Map<String, dynamic>,
    ));
  }
}

class _$_RootState with DiagnosticableTreeMixin implements _RootState {
  const _$_RootState(
      {this.currentIndex = 0,
      this.bottomNavVisibility = true,
      this.scrollController,
      this.hasInternetConnection = false,
      this.fcmIsConfigured = false,
      this.notification})
      : assert(currentIndex != null),
        assert(bottomNavVisibility != null),
        assert(hasInternetConnection != null),
        assert(fcmIsConfigured != null);

  @JsonKey(defaultValue: 0)
  @override
  final int currentIndex;
  @JsonKey(defaultValue: true)
  @override
  final bool bottomNavVisibility;
  @override
  final ScrollController scrollController;
  @JsonKey(defaultValue: false)
  @override
  final bool hasInternetConnection;
  @JsonKey(defaultValue: false)
  @override
  final bool fcmIsConfigured;
  @override
  final Map<String, dynamic> notification;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RootState(currentIndex: $currentIndex, bottomNavVisibility: $bottomNavVisibility, scrollController: $scrollController, hasInternetConnection: $hasInternetConnection, fcmIsConfigured: $fcmIsConfigured, notification: $notification)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RootState'))
      ..add(DiagnosticsProperty('currentIndex', currentIndex))
      ..add(DiagnosticsProperty('bottomNavVisibility', bottomNavVisibility))
      ..add(DiagnosticsProperty('scrollController', scrollController))
      ..add(DiagnosticsProperty('hasInternetConnection', hasInternetConnection))
      ..add(DiagnosticsProperty('fcmIsConfigured', fcmIsConfigured))
      ..add(DiagnosticsProperty('notification', notification));
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
                    .equals(other.scrollController, scrollController)) &&
            (identical(other.hasInternetConnection, hasInternetConnection) ||
                const DeepCollectionEquality().equals(
                    other.hasInternetConnection, hasInternetConnection)) &&
            (identical(other.fcmIsConfigured, fcmIsConfigured) ||
                const DeepCollectionEquality()
                    .equals(other.fcmIsConfigured, fcmIsConfigured)) &&
            (identical(other.notification, notification) ||
                const DeepCollectionEquality()
                    .equals(other.notification, notification)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentIndex) ^
      const DeepCollectionEquality().hash(bottomNavVisibility) ^
      const DeepCollectionEquality().hash(scrollController) ^
      const DeepCollectionEquality().hash(hasInternetConnection) ^
      const DeepCollectionEquality().hash(fcmIsConfigured) ^
      const DeepCollectionEquality().hash(notification);

  @override
  _$RootStateCopyWith<_RootState> get copyWith =>
      __$RootStateCopyWithImpl<_RootState>(this, _$identity);
}

abstract class _RootState implements RootState {
  const factory _RootState(
      {int currentIndex,
      bool bottomNavVisibility,
      ScrollController scrollController,
      bool hasInternetConnection,
      bool fcmIsConfigured,
      Map<String, dynamic> notification}) = _$_RootState;

  @override
  int get currentIndex;
  @override
  bool get bottomNavVisibility;
  @override
  ScrollController get scrollController;
  @override
  bool get hasInternetConnection;
  @override
  bool get fcmIsConfigured;
  @override
  Map<String, dynamic> get notification;
  @override
  _$RootStateCopyWith<_RootState> get copyWith;
}
