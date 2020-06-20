import 'package:afrotrends/manager/service_provider/provider.dart';
import 'package:afrotrends/my_app.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await serviceProvider(Environment.prod);
  runApp(MyApp());
}