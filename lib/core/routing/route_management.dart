import 'package:flutter/cupertino.dart';
import 'package:stac_test/core/routing/route_mapper.dart';

class RouteManagement {
  static RouteManagement? _instance;
  static RouteManagement get instance => _instance ?? RouteManagement();

  static final GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

  static String currentScreen = '';

  static BuildContext get context => navigationKey.currentContext!;

  void pop([dynamic data]) {
    if (navigationKey.currentState?.canPop() == true) {
      navigationKey.currentState?.pop(data);
    }
  }

  bool canPop() {
    return navigationKey.currentState?.canPop() == true;
  }

  void popUntil(String routeName) {
    return navigationKey.currentState?.popUntil(withName(routeName));
  }

  static RoutePredicate withName(String name) {
    List<String> names = [];
    if (name == "/") {
      names = ["/"];
    } else {
      names = [name];
    }
    return (Route<dynamic> route) {
      return !route.willHandlePopInternally && route is ModalRoute && names.contains(route.settings.name);
    };
  }

  Future<dynamic> pushNamed(String routeName, {Map<String, dynamic>? arguments}) async {
    return navigationKey.currentState?.pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Map<String, dynamic>? arguments}) async {
    return navigationKey.currentState?.pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> popAndPushNamed(String routeName, {Map<String, dynamic>? arguments}) async {
    return navigationKey.currentState?.popAndPushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName, String removeRouteName, {Map<String, dynamic>? arguments}) async {
    return navigationKey.currentState?.pushNamedAndRemoveUntil(routeName, withName(removeRouteName));
  }

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return CupertinoPageRoute(
        settings: settings,
        builder: (context) {
          return RouteMapper.getRoute(settings.name ?? '', settings.arguments != null ? settings.arguments as Map<String, dynamic> : {});
        });
  }
}
