import 'package:afrotrends/manager/service_provider/provider.iconfig.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

GetIt getIt = GetIt.instance;

@injectableInit
void serviceProvider(String env) => $initGetIt(getIt, environment: env);
