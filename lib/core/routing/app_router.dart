import 'package:go_router/go_router.dart';
import 'package:stac_test/core/routing/route_config.dart';
import 'package:stac_test/ui/screens/auth_screen/auth_screen.dart';
import 'package:stac_test/ui/screens/dynamic_screen/dynamic_screen.dart';
import 'package:stac_test/ui/screens/home_screen/home_screen.dart';
import 'package:stac_test/ui/screens/splash_screen/splash_screen.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    initialLocation: RouteConfig.splash,
    routes: [
      GoRoute(
        path: RouteConfig.splash,
        name: RouteConfig.splash.name,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: RouteConfig.home,
        name: RouteConfig.home.name,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: RouteConfig.login,
        name: RouteConfig.login.name,
        builder: (context, state) => const AuthScreen(),
      ),
    ],

    // Handle SDUI routing
    errorBuilder: (context, state) => DynamicScreen(routeName: state.uri.path),
  );
}
