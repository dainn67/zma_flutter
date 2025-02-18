import 'package:flutter/widgets.dart';
import 'package:stac_test/core/routing/route_management.dart';

class MyNavigatorObServer extends NavigatorObserver {
  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    var screen = previousRoute?.settings.name;
    if(screen != null) {
      RouteManagement.currentScreen = screen;
    }
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    var screen = route.settings.name;
    if(screen != null) {
      RouteManagement.currentScreen = screen;
    }
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    var screen = newRoute?.settings.name;
    if(screen != null) {
      RouteManagement.currentScreen = screen;
    }
  }
}