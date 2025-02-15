import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../network/api_client.dart';
import '../models/screen_config.dart';

class ScreenService {
  final ApiClient _apiClient;
  final Map<String, ScreenConfig> _screenCache = {};
  final bool useLocalScreens;

  ScreenService({
    required ApiClient apiClient,
    this.useLocalScreens = true,
  }) : _apiClient = apiClient;

  Future<ScreenConfig> getScreen(String route) async {
    debugPrint('Getting screen for route: $route');
    if (_screenCache.containsKey(route)) {
      return _screenCache[route]!;
    }

    try {
      final Map<String, dynamic> json;
      if (useLocalScreens) {
        // Load from local JSON file
        final String jsonString = await rootBundle.loadString(
          'lib/core/sample_screens${_getJsonFileName(route)}.json',
        );
        debugPrint('Loading screen from: lib/core/sample_screens${_getJsonFileName(route)}.json'); // Debug print
        json = jsonDecode(jsonString) as Map<String, dynamic>;
      } else {
        // Load from API
        json = await _apiClient.getScreenData(route);
      }

      final screenConfig = ScreenConfig.fromJson(json);
      _screenCache[route] = screenConfig;
      return screenConfig;
    } catch (e) {
      debugPrint('Error loading screen: $e'); // Debug print
      throw Exception('Failed to load screen: $e');
    }
  }

  String _getJsonFileName(String route) {
    if (route == '/') return '/home_screen';
    final cleanRoute = route.startsWith('/') ? route.substring(1) : route;
    return '/$cleanRoute';
  }

  void clearCache() {
    _screenCache.clear();
  }
}