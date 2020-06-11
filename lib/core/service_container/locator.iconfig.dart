// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:afrotrends/core/service_container/modules/general_module.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:afrotrends/core/service_container/modules/firebase_module.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:afrotrends/blogger/infrastructure/auth/firestore_auth_impl.dart';
import 'package:afrotrends/core/service_container/modules/notification_module.dart';
import 'package:flutter_local_notifications/src/flutter_local_notifications_plugin.dart';
import 'package:afrotrends/blogger/infrastructure/wp_impl/media_facade_impl.dart';
import 'package:afrotrends/blogger/infrastructure/firebase/push_notification.dart';
import 'package:afrotrends/blogger/infrastructure/wp_impl/user_facade_impl.dart';
import 'package:afrotrends/blogger/infrastructure/auth/firebase_auth_impl.dart';
import 'package:afrotrends/blogger/domain/facades/auth_facade.dart';
import 'package:afrotrends/blogger/infrastructure/wp_impl/category_facade_impl.dart';
import 'package:afrotrends/blogger/infrastructure/wp_impl/post_facade_impl.dart';
import 'package:afrotrends/blogger/app/blocs/root_bloc/root_bloc.dart';
import 'package:afrotrends/blogger/app/blocs/for_you_screen_bloc/for_you_screen_bloc.dart';
import 'package:afrotrends/blogger/app/blocs/home_screen_bloc/home_screen_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final generalModule = _$GeneralModule();
  final firebaseModule = _$FirebaseModule();
  final notificationModule = _$NotificationModule();
  g.registerLazySingleton<DataConnectionChecker>(
      () => generalModule.connectionChecker);
  g.registerLazySingleton<Dio>(() => generalModule.dio);
  g.registerLazySingleton<FirebaseAuth>(() => firebaseModule.firebaseAuth);
  g.registerLazySingleton<FirebaseMessaging>(() => firebaseModule.fcm);
  g.registerLazySingleton<Firestore>(() => firebaseModule.firestore);
  g.registerLazySingleton<FirestoreAuthImpl>(() => FirestoreAuthImpl(
      firestore: g<Firestore>(), firebaseAuth: g<FirebaseAuth>()));
  g.registerLazySingleton<MediaFacade>(() => MediaFacade(client: g<Dio>()));
  g.registerLazySingleton<PushNotification>(() => PushNotification(
        messaging: g<FirebaseMessaging>(),
        firestoreAuthImpl: g<FirestoreAuthImpl>(),
        dio: g<Dio>(),
      ));
  g.registerLazySingleton<UserFacade>(() => UserFacade(client: g<Dio>()));
  g.registerLazySingleton<AuthFacade>(() => FirebaseAuthImpl(
      firebaseAuth: g<FirebaseAuth>(),
      firestoreAuthImpl: g<FirestoreAuthImpl>()));
  g.registerLazySingleton<CategoryFacade>(
      () => CategoryFacade(client: g<Dio>()));
  g.registerLazySingleton<PostFacade>(() => PostFacade(
        client: g<Dio>(),
        categoryFacade: g<CategoryFacade>(),
        userFacade: g<UserFacade>(),
        mediaFacade: g<MediaFacade>(),
      ));
  g.registerFactory<RootBloc>(() => RootBloc(
        authFacade: g<AuthFacade>(),
        pushNotification: g<PushNotification>(),
        connectionChecker: g<DataConnectionChecker>(),
      ));

  //Eager singletons must be registered in the right order
  g.registerSingleton<FlutterLocalNotificationsPlugin>(
      notificationModule.flutterLocalNotificationsPlugin);
  g.registerSingleton<ForYouScreenBloc>(ForYouScreenBloc(
      postFacade: g<PostFacade>(), categoryFacade: g<CategoryFacade>()));
  g.registerSingleton<HomeScreenBloc>(HomeScreenBloc(
      postFacade: g<PostFacade>(), categoryFacade: g<CategoryFacade>()));
}

class _$GeneralModule extends GeneralModule {}

class _$FirebaseModule extends FirebaseModule {}

class _$NotificationModule extends NotificationModule {}
