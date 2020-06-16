import 'package:afrotrends/core/service_container/locator.iconfig.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

GetIt getIt = GetIt.instance;

@injectableInit
Future<void> serviceLocator(String env) async => await $initGetIt(getIt, environment: env);
