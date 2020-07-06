import 'package:admob_flutter/admob_flutter.dart';
import 'package:afrotrends/env/config.dart';
import 'package:afrotrends/my_app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Setup Environmental variables & Service provider
  BuildEnvironment.init(flavor: BuildFlavor.dev, baseUrl: 'afrotrends.com');
  assert(env != null);
  // Initialize Admob
  Admob.initialize(env.appId);
  // Run Flutter app
  runApp(MyApp());
}
