import 'package:afrotrends/core/service_container/locator.dart';
import 'package:afrotrends/my_app.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

void main() {
  serviceLocator(Environment.prod);
  runApp(MyApp());
}