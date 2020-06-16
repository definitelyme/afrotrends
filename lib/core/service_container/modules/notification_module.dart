import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NotificationModule {
  @lazySingleton
  FlutterLocalNotificationsPlugin get flutterLocalNotificationsPlugin => FlutterLocalNotificationsPlugin();

  @lazySingleton
  FirebaseMessaging get fcm => FirebaseMessaging();
}