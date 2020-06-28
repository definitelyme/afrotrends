// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:afrotrends/manager/service_modules/data_module.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final dataModule = _$DataModule();
  g.registerLazySingleton<Dio>(() => dataModule.dio);
}

class _$DataModule extends DataModule {}
