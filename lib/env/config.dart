import 'package:afrotrends/manager/service_provider/provider.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

enum BuildFlavor { prod, dev, staging }

BuildEnvironment get env => _env;
BuildEnvironment _env;

class BuildEnvironment {
  final BuildFlavor flavor;
  final String appId;

  BuildEnvironment._init({this.flavor, this.appId});

  /// Sets up the top-level [env] getter on the first call only.
  static void init({@required flavor, baseUrl}) {
    _env ??= BuildEnvironment._init(flavor: flavor, appId: "ca-app-pub-3940256099942544~3347511713");

    if (flavor == BuildFlavor.dev)
      serviceProvider(Environment.dev);
    else if (flavor == BuildFlavor.prod)
      serviceProvider(Environment.prod);
    else if (flavor == BuildFlavor.staging) serviceProvider(Environment.test);
  }
}
