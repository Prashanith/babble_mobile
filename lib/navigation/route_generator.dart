import 'route_modules.dart/home.dart';
import 'routes.dart';
import '../screens/error/error.dart';
import '../screens/initializer/application_router.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  final GlobalKey<NavigatorState> navigator = GlobalKey<NavigatorState>();
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.init:
        return Page(const ApplicationRouter());
      case Routes.home:
        return UserRouter.generateUserRoute(settings);
      default:
        return Page(const ErrorPage());
    }
  }
}

// ignore: non_constant_identifier_names
Route<dynamic> Page(Widget widget) {
  return MaterialPageRoute(builder: (_) => widget);
}
