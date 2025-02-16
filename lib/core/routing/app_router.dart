import 'package:flutter/material.dart';
import '../services/screen_service.dart';
import '../../screens/dynamic_screen.dart';
import '../../screens/error_screen.dart';

class AppRouter {
  final ScreenService _screenService;

  AppRouter({required ScreenService screenService})
      : _screenService = screenService;

  Route<dynamic> generateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => FutureBuilder(
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
      ),
    );
  }
}
