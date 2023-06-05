
import 'controllers/application.dart';
import 'navigation/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get.dart';

import 'services/init_services.dart';

void main() async {
  await Services.initializeServices();
  final ac = Get.put(ApplicationController());
  await ac.initiateServices();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Babble',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorKey: locator.get<RouteGenerator>().navigator,
    );
  }
}
