import 'dart:io';

import 'package:afrotrends/blogger/app/blocs/root_bloc/bloc.dart';
import 'package:afrotrends/blogger/infrastructure/notification_impls/fcm_token_cache_impl.dart';
import 'package:afrotrends/blogger/infrastructure/notification_impls/token_model.dart';
import 'package:afrotrends/core/service_container/locator.dart';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class PushNotification {
  FirebaseMessaging _firebaseMessaging;
  TokenCacheImpl _tokenCacheImpl;
  Dio _dio;

  PushNotification(
      {FirebaseMessaging messaging, TokenCacheImpl tokenCacheImpl, Dio dio})
      : _firebaseMessaging = messaging ?? getIt<FirebaseMessaging>(),
        _tokenCacheImpl = tokenCacheImpl,
        _dio = dio;

  void configure({
    Future<dynamic> Function(Map<String, dynamic> data) onMessage,
    Future<dynamic> Function(Map<String, dynamic> data) onLaunch,
    Future<dynamic> Function(Map<String, dynamic> data) onResume,
  }) async {
    // We'll try to store the device's token everytime the application is launched
    _tokenCacheImpl.storeToken(token: await _firebaseMessaging.getToken());
    // Configure the application to receive notifications from FCM
    _firebaseMessaging.configure(
        onMessage: onMessage,
        onLaunch: onLaunch,
        onBackgroundMessage: myBackgroundMessageHandler,
        onResume: onResume);
    // Registers the device on Afrotrends.com
    registerDeviceOnServer();
  }

  Future<void> registerDevice() async {
    if (Platform.isIOS) {
      await _firebaseMessaging.requestNotificationPermissions(
          const IosNotificationSettings(sound: true, badge: true, alert: true));
      _firebaseMessaging.onIosSettingsRegistered
          .listen((IosNotificationSettings settings) {
        print("Settings registered: $settings");
      });
    }
  }

  Future<bool> registerDeviceOnServer() async {
    // We'll get the cached token and platform
    Token token = _tokenCacheImpl.getToken().getOrElse(() => null);
    String url = "https://afrotrends.com/pnfw/register/";

    // Convert to map and serialize as FormData
    Map<String, dynamic> requestData = {
      "token": token.token,
      "os": token.platform,
    };
    FormData formData = new FormData.fromMap(requestData);

    try {
      var response = await _dio.post(url, data: formData);
      if (response.statusCode != 200)
        throw DioError(
            request: response.request,
            response: response,
            error: response.statusMessage);
      return true;
    } on DioError catch (e) {
      return false;
    }
  }

  Future<void> unRegisterDevice() async {
    //
  }

  static Future<dynamic> myBackgroundMessageHandler(
      Map<String, dynamic> message) async {
    getIt<RootBloc>().add(RootEvent.onBackgroundMessage(message));
    if (message.containsKey('data')) {
      final dynamic data = message['data'];
      print("Data from onBackgroundMessage => $data");
    }

    if (message.containsKey('notification')) {
      final dynamic notification = message['notification'];
      print("notification from onBackgroundMessage => $notification");
    }
    return null;
  }
}
