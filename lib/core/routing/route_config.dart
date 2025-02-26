class RouteConfig {
  RouteConfig._();

  static const String defaultRoute = '/';
  static const String splash = '/splash';
  static const String home = '/home';
  static const String login = '/login';
  static const String profile = '/profile';
}

extension RouteNameExtension on String {
  String get name {
    // Handle root route specially
    if (this == '/') return 'root';
    // Remove leading slash and return the route name
    return startsWith('/') ? substring(1) : this;
  }
}
