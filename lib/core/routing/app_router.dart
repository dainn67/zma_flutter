import 'package:go_router/go_router.dart';
import 'package:stac_test/core/routing/route_config.dart';
import 'package:stac_test/ui/screens/auth/auth_screen.dart';
import 'package:stac_test/ui/screens/common/error_screen.dart';
import 'package:stac_test/ui/screens/dynamic/dynamic_screen.dart';
import 'package:stac_test/ui/screens/home/home_screen.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    initialLocation: RouteConfig.home,
    routes: [
      GoRoute(
        path: RouteConfig.defaultRoute,
        name: 'default',
        builder: (context, state) => const ErrorScreen(error: 'Unknown route'),
      ),
      GoRoute(
        path: RouteConfig.home,
        name: 'home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: RouteConfig.login,
        name: 'login',
        builder: (context, state) => const AuthScreen(),
      ),
    ],

    // Handle SDUI routing
    errorBuilder: (context, state) => DynamicScreen(routeName: state.uri.path),
  );
}
