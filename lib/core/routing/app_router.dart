import 'package:flutter/material.dart';
import 'package:stac_test/screens/common/error_screen.dart';
import 'package:stac_test/screens/dynamic/dynamic_screen.dart';
import 'package:stac_test/screens/home/home_screen.dart';
import '../services/screen_service.dart';

class AppRouter {
  final ScreenService _screenService;

  AppRouter({required ScreenService screenService})
      : _screenService = screenService;

  Route<dynamic> generateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) {
        // Handle static routes first
        if (settings.name == '/') {
          return const HomeScreen();
        }

        // Handle dynamic routes
        return FutureBuilder(
          future: _screenService.getScreen(settings.name ?? '/'),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return DynamicScreen(screenConfig: snapshot.data!);
            } else if (snapshot.hasError) {
              return ErrorScreen(error: snapshot.error.toString());
            }
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
        );
      },
    );
  }
}
