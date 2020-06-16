// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:afrotrends/core/service_container/modules/facade_module.dart';
import 'package:http/src/client.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:afrotrends/core/service_container/modules/notification_module.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/src/flutter_local_notifications_plugin.dart';
import 'package:afrotrends/blogger/infrastructure/wp_impl/media_facade_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:afrotrends/core/service_container/modules/cache_module.dart';
import 'package:afrotrends/blogger/infrastructure/notification_impls/fcm_token_cache_impl.dart';
import 'package:afrotrends/blogger/infrastructure/wp_impl/user_facade_impl.dart';
import 'package:afrotrends/blogger/infrastructure/wp_impl/category_facade_impl.dart';
import 'package:afrotrends/blogger/infrastructure/wp_impl/post_facade_impl.dart';
import 'package:afrotrends/blogger/infrastructure/notification_impls/push_notification.dart';
import 'package:afrotrends/blogger/app/blocs/for_you_screen_bloc/for_you_screen_bloc.dart';
import 'package:afrotrends/blogger/app/blocs/home_screen_bloc/home_screen_bloc.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final facadeModule = _$FacadeModule();
  final notificationModule = _$NotificationModule();
  final cacheModule = _$CacheModule();
  g.registerLazySingleton<Client>(() => facadeModule.client);
  g.registerLazySingleton<DataConnectionChecker>(
      () => facadeModule.connectionChecker);
  g.registerLazySingleton<Dio>(() => facadeModule.dio);
  g.registerLazySingleton<FirebaseMessaging>(() => notificationModule.fcm);
  g.registerLazySingleton<FlutterLocalNotificationsPlugin>(
      () => notificationModule.flutterLocalNotificationsPlugin);
  g.registerLazySingleton<MediaFacade>(() => MediaFacade(client: g<Dio>()));
  final sharedPreferences = await cacheModule.prefs;
  g.registerFactory<SharedPreferences>(() => sharedPreferences);
  g.registerLazySingleton<TokenCacheImpl>(
      () => TokenCacheImpl(preferences: g<SharedPreferences>()));
  g.registerLazySingleton<UserFacade>(() => UserFacade(client: g<Client>()));
  g.registerLazySingleton<CategoryFacade>(
      () => CategoryFacade(client: g<Dio>()));
  g.registerLazySingleton<PostFacade>(() => PostFacade(
        client: g<Dio>(),
        categoryFacade: g<CategoryFacade>(),
        userFacade: g<UserFacade>(),
        mediaFacade: g<MediaFacade>(),
      ));
  g.registerLazySingleton<PushNotification>(() => PushNotification(
        messaging: g<FirebaseMessaging>(),
        tokenCacheImpl: g<TokenCacheImpl>(),
        dio: g<Dio>(),
      ));
  g.registerFactory<ForYouScreenBloc>(() => ForYouScreenBloc(
      postFacade: g<PostFacade>(), categoryFacade: g<CategoryFacade>()));
  g.registerFactory<HomeScreenBloc>(() => HomeScreenBloc(
      postFacade: g<PostFacade>(), categoryFacade: g<CategoryFacade>()));
}

class _$FacadeModule extends FacadeModule {}

class _$NotificationModule extends NotificationModule {}

class _$CacheModule extends CacheModule {}
