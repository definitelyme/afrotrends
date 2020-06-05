import 'package:afrotrends/core/service_container/locator.iconfig.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

GetIt getIt = GetIt.instance;

@injectableInit
void serviceLocator(String env) => $initGetIt(getIt, environment: env);
