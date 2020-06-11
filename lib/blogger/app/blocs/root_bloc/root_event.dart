import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'root_event.freezed.dart';

@freezed
@immutable
abstract class RootEvent with _$RootEvent {
  const factory RootEvent.updatePageIndex(int index) = _UpdatePageIndex;

  const factory RootEvent.updateBottomNavVisibility(bool isVisible) = _UpdateBottomNavVisiblity;
  
  const factory RootEvent.createAnonymousUser() = _MakeAnonymousUser;
  
  const factory RootEvent.configurePushNotification() = _ConfigurePushNotifications;
  
  const factory RootEvent.onMessage(Map<String, dynamic> data) = _FCM_OnMessage;
  
  const factory RootEvent.onResume(Map<String, dynamic> data) = _FCM_OnResume;
  
  const factory RootEvent.onLaunch(Map<String, dynamic> data) = _FCM_OnLaunch;
  
  const factory RootEvent.onBackgroundMessage(Map<String, dynamic> data) = _FCM_OnBackgroundMessage;
}
