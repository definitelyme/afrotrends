// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:afrotrends/manager/service_modules/data_module.dart';
import 'package:dio/dio.dart';
import 'package:afrotrends/features/data/client/dio_client.dart';
import 'package:afrotrends/features/domain/api_client/client.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final dataModule = _$DataModule();
  g.registerLazySingleton<Dio>(() => dataModule.dio);
  g.registerFactory<ApiClient<Response<dynamic>>>(() => DioClient(g<Dio>()));
}

class _$DataModule extends DataModule {}
