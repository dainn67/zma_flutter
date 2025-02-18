import 'package:flutter/material.dart';
import 'package:stac_test/core/routing/route_config.dart';
import 'package:stac_test/screens/dynamic/dynamic_screen.dart';
import 'package:stac_test/screens/home/home_screen.dart';
import '../network/api_client.dart';
import '../models/screen_config.dart';

class ScreenService {
  final ApiClient _apiClient;
  final Map<String, ScreenConfig> _screenCache = {};

  ScreenService({
    required ApiClient apiClient,
  }) : _apiClient = apiClient;

  Future<Widget> getScreen(String route) async {
    // Handle static routes
    if (route == RouteConfig.home) {
      return const HomeScreen();
    }

    // Handle dynamic routes
    late ScreenConfig screenConfig;

    // Load from cache if available
    if (_screenCache.containsKey(route)) {
      screenConfig = _screenCache[route]!;
    } else {
      final json = await _apiClient.getScreenData(route);
      screenConfig = ScreenConfig.fromJson(json);
      _screenCache[route] = screenConfig;
    }

    return DynamicScreen(screenConfig: screenConfig);
  }

  void clearCache() {
    _screenCache.clear();
  }
}
