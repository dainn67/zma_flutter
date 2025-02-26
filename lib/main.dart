import 'package:flutter/material.dart';
import 'package:stac_test/core/routing/app_router.dart';
import 'package:toastification/toastification.dart';
import 'core/di/service_locator.dart';
import 'core/config/config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
        child: MaterialApp.router(
      debugShowCheckedModeBanner: !AppConfig.isProduction,
      title: AppConfig.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      routerConfig: AppRouter().router,
    ));
  }
}
