import 'package:flutter/material.dart';
import 'package:stac/stac.dart';
import 'core/di/service_locator.dart';
import 'core/routing/app_router.dart';
import 'core/config/config.dart';
import 'core/services/log_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Stac.initialize();
  setupServiceLocator();

  // Initialize app configuration
  AppConfig.initialize();
  
  if (AppConfig.enableLogging) {
    LogService.success('App initialized successfully');
    LogService.info('Environment: ${AppConfig.environment}');
    LogService.info('API URL: ${AppConfig.apiBaseUrl}');
    LogService.info('App Name: ${AppConfig.appName}');
    LogService.info('Version: ${AppConfig.sdkVersion}');
    LogService.info('Build: ${AppConfig.buildNumber}');
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: !AppConfig.isProduction,
      title: AppConfig.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      onGenerateRoute: getIt<AppRouter>().generateRoute,
      initialRoute: '/',
    );
  }
}