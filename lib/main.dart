import 'package:flutter/material.dart';
import 'package:stac/stac.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stac_test/core/constants/shared_prefs_keys.dart';
import 'package:stac_test/core/routing/app_router.dart';
import 'package:stac_test/core/services/shared_prefs_service.dart';
import 'package:stac_test/core/stac_parser/parser/actions/open_dialog_parser.dart';
import 'package:stac_test/core/stac_parser/parser/actions/route_action_parser.dart';
import 'package:stac_test/core/stac_parser/parser/components/confirm_dialog_parser.dart';
import 'package:stac_test/core/stac_parser/parser/components/main_button_parser.dart';
import 'package:stac_test/core/stac_parser/parser/actions/log_action_parser.dart';
import 'package:stac_test/core/stac_parser/parser/components/safe_area_parser.dart';
import 'package:stac_test/ui/screens/auth/auth_screen.dart';
import 'package:stac_test/ui/screens/splash/splash_screen.dart';
import 'core/di/service_locator.dart';
import 'core/config/config.dart';
import 'core/services/log_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SDUI APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const AppStarter(),
    );
  }
}

class AppStarter extends StatefulWidget {
  const AppStarter({super.key});

  @override
  State<AppStarter> createState() => _AppStarterState();
}

class _AppStarterState extends State<AppStarter> {
  bool _initialized = false;
  bool _isAuthenticated = false;

  final sharedPrefsService = getIt<SharedPrefsService>();

  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    try {
      // Start a timer for minimum splash screen duration
      final minLoadingFuture = Future.delayed(const Duration(seconds: 1));

      // Run all initialization tasks
      final initFuture = Future.wait([
        Stac.initialize(
          parsers: [
            MainStacButtonParser(),
            SafeAreaStacParser(),
            ConfirmStacDialogParser(),
          ],
          actionParsers: [
            LogStacActionParser(),
            OpenDialogParser(),
            RouteActionParser(),
          ],
        ),
        Future(() {
          AppConfig.initialize();
        }),
      ]);

      // Wait for Reither initialization or minimum time, whichever takes longer
      await Future.wait([minLoadingFuture, initFuture]);

      // Check authentication status
      final authToken = sharedPrefsService.isLoggedIn();

      setState(() {
        _initialized = true;
        _isAuthenticated = authToken;
      });
    } catch (e) {
      LogService.error('Failed to initialize app: $e');
      setState(() => _initialized = true);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!_initialized) {
      return const SplashScreen();
    }

    if (!_isAuthenticated) {
      return const AuthScreen();
    }

    return const MainApp();
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: !AppConfig.isProduction,
      title: AppConfig.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      routerConfig: AppRouter().router,
    );
  }
}
