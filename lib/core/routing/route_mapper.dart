import 'package:flutter/material.dart';
import 'package:stac_test/core/routing/route_config.dart';
import 'package:stac_test/screens/auth/auth_screen.dart';
import 'package:stac_test/screens/home/home_screen.dart';

class RouteMapper {
  static Widget getRoute(String routeName, Map<String, dynamic> arguments) {
    switch (routeName) {
      case RouteConfig.home:
        return const HomeScreen();
      case RouteConfig.login:
        return const AuthScreen();
      default:
        return Scaffold(
          body: Center(
            child: Text('No route defined for $routeName'),
          ),
        );
    }
  }
}
