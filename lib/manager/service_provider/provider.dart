import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

GetIt getIt = GetIt.instance;

@injectableInit
Future<void> serviceProvider(String env) async => await $initGetIt(getIt, environment: env);