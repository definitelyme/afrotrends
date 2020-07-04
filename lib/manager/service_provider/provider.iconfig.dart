// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:afrotrends/manager/service_modules/data_module.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:retry/retry.dart';
import 'package:afrotrends/features/data/client/dio/dio_client.dart';
import 'package:afrotrends/features/domain/api_client/client.dart';
import 'package:afrotrends/features/data/remote/data_sources/category_datasource.dart';
import 'package:afrotrends/features/data/repositories/category_repository.dart';
import 'package:afrotrends/features/data/remote/data_sources/post_datasource.dart';
import 'package:afrotrends/features/data/repositories/post_repository.dart';
import 'package:afrotrends/presentation/manager/home_bloc/home_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final dataModule = _$DataModule();
  g.registerLazySingleton<DataConnectionChecker>(
      () => dataModule.connectionChecker);
  g.registerLazySingleton<Dio>(() => dataModule.dio);
  g.registerLazySingleton<RetryOptions>(() => dataModule.retryOptions);
  g.registerFactory<ApiClient<Response<dynamic>>>(() => DioClient(g<Dio>()));
  g.registerLazySingleton<CategoryDataSource>(() =>
      CategoryDataSource(g<ApiClient<Response<dynamic>>>(), g<RetryOptions>()));
  g.registerLazySingleton<CategoryRepository>(() =>
      CategoryRepository(g<DataConnectionChecker>(), g<CategoryDataSource>()));
  g.registerLazySingleton<PostDataSource>(() =>
      PostDataSource(g<ApiClient<Response<dynamic>>>(), g<RetryOptions>()));
  g.registerLazySingleton<PostRepository>(() => PostRepository(
      connectionChecker: g<DataConnectionChecker>(),
      dataSource: g<PostDataSource>()));
  g.registerFactory<HomeBloc>(() => HomeBloc(
        g<PostRepository>(),
        g<RetryOptions>(),
        g<CategoryRepository>(),
      ));
}

class _$DataModule extends DataModule {}
