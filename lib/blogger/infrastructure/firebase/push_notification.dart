import 'dart:io';

import 'package:afrotrends/blogger/app/blocs/root_bloc/bloc.dart';
import 'package:afrotrends/blogger/infrastructure/auth/firestore_auth_impl.dart';
import 'package:afrotrends/core/service_container/locator.dart';
import 'package:afrotrends/core/utils/string_extension.dart';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class PushNotification {
  FirebaseMessaging _firebaseMessaging;
  FirestoreAuthImpl _firestoreAuthImpl;
  Dio _dio;

  PushNotification({FirebaseMessaging messaging, FirestoreAuthImpl firestoreAuthImpl, Dio dio})
      : _firebaseMessaging = messaging ?? getIt<FirebaseMessaging>(),
        _firestoreAuthImpl = firestoreAuthImpl,
        _dio = dio;

  void configure({
    Future<dynamic> Function(Map<String, dynamic> data) onMessage,
    Future<dynamic> Function(Map<String, dynamic> data) onLaunch,
    Future<dynamic> Function(Map<String, dynamic> data) onResume,
  }) {
    if (Platform.isIOS) _firebaseMessaging.requestNotificationPermissions(IosNotificationSettings());
    _firebaseMessaging.configure(onMessage: onMessage, onLaunch: onLaunch, onBackgroundMessage: myBackgroundMessageHandler, onResume: onResume);
  }

  Future<void> registerDevice() async {
    if (Platform.isIOS) {
      await _firebaseMessaging.requestNotificationPermissions(const IosNotificationSettings(sound: true, badge: true, alert: true));
      _firebaseMessaging.onIosSettingsRegistered.listen((IosNotificationSettings settings) {
        print("Settings registered: $settings");
      });
    }
    _firestoreAuthImpl.storeDeviceToken(data: await _firebaseMessaging.getToken(), merge: true);
    registerUserToTopic();
  }

  void registerUserToTopic() async {
    String token = (await _firestoreAuthImpl.retrieveToken()).getOrElse(() => null)?.token;
    String os = "${Platform.operatingSystem.firstToUpper()}";
    String url = "https://afrotrends.com/pnfw/register/";
    Map<String, dynamic> requestData = {
      "token": token,
      "os": os,
    };
    FormData formData = new FormData.fromMap(requestData);
    try {
      await _dio.post(url, data: formData);
    } on DioError catch (e) {
      print(e?.response);
    }
  }

  Future<void> unRegisterDevice() async {
    //
  }

  static Future<dynamic> myBackgroundMessageHandler(Map<String, dynamic> message) async {
    getIt<RootBloc>().add(RootEvent.onLaunch(message));
    return null;
  }
}
