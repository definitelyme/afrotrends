import 'package:afrotrends/manager/service_provider/provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'playground/simple.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Afrotrends',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
//      routes: router,
//      initialRoute: RootParent.routeName,
      home: Scaffold(
        body: Column(
          children: [
            Text("Hello people"),
            FlatButton(
              child: Text("Get Posts"),
              onPressed: () async {
                await SimpleRepo(getIt<Dio>()).makeReq();
              },
            )
          ],
        ),
      ),
    );
  }
}
