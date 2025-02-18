import 'package:flutter/material.dart';
import 'package:stac/stac.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stac_test/core/constants/shared_prefs_keys.dart';
import 'package:stac_test/core/routing/my_navigator_observer.dart';
import 'package:stac_test/core/routing/route_config.dart';
import 'package:stac_test/core/routing/route_management.dart';
import 'package:stac_test/screens/splash/splash_screen.dart';
import 'core/di/service_locator.dart';
import 'core/config/config.dart';
import 'core/services/log_service.dart';
import 'core/services/shared_prefs_service.dart';
import 'screens/auth/auth_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Your App Name',
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
        SharedPrefsService.init(),
        Stac.initialize(),
        Future(() {
          setupServiceLocator();
          AppConfig.initialize();
        }),
      ]);

      // Wait for either initialization or minimum time, whichever takes longer
      await Future.wait([minLoadingFuture, initFuture]);

      if (AppConfig.enableLogging) {
        LogService.success('App initialized successfully');
        LogService.info('Environment: ${AppConfig.environment}');
        LogService.info('API URL: ${AppConfig.apiBaseUrl}');
        LogService.info('App Name: ${AppConfig.appName}');
        LogService.info('Version: ${AppConfig.sdkVersion}');
        LogService.info('Build: ${AppConfig.buildNumber}');
        LogService.info('--------------------------------');
      }

      // Check authentication status
      final prefs = await SharedPreferences.getInstance();
      final authToken = prefs.getBool(SharedPrefsKeys.isLoggedIn); // or whatever key you use

      setState(() {
        _initialized = true;
        _isAuthenticated = authToken != null;
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

    return _isAuthenticated ? const MainApp() : const AuthScreen();
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: !AppConfig.isProduction,
      title: AppConfig.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      navigatorObservers: [MyNavigatorObServer()],
      onGenerateRoute: RouteManagement.instance.onGenerateRoute,
      initialRoute: RouteConfig.home,
      navigatorKey: RouteManagement.navigationKey,
    );
  }
}
