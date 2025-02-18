import 'package:flutter/material.dart';
import 'package:stac_test/core/routing/route_config.dart';
import 'package:stac_test/ui/screens/auth/auth_screen.dart';
import 'package:stac_test/ui/screens/dynamic/dynamic_screen.dart';
import 'package:stac_test/ui/screens/home/home_screen.dart';

class RouteMapper {
  static Widget getRoute(String routeName, Map<String, dynamic> arguments) {
    switch (routeName) {
      case RouteConfig.home:
        return const HomeScreen();
      case RouteConfig.login:
        return const AuthScreen();
      default:
        return DynamicScreen(routeName: routeName);
    }
  }
}
