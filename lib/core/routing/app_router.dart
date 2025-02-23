import 'package:go_router/go_router.dart';
import 'package:stac_test/core/routing/route_config.dart';
import 'package:stac_test/ui/screens/auth/auth_screen.dart';
import 'package:stac_test/ui/screens/home/home_screen.dart';

class AppRouter {
  final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: RouteConfig.defaultRoute,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: RouteConfig.home,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: RouteConfig.login,
      builder: (context, state) => const AuthScreen(),
    ),
  ],
);
}
