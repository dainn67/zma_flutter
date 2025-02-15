import 'package:flutter/material.dart';
import '../network/api_client.dart';
import '../models/screen_config.dart';

class ScreenService {
  final ApiClient _apiClient;
  final Map<String, ScreenConfig> _screenCache = {};

  ScreenService({
    required ApiClient apiClient,
  }) : _apiClient = apiClient;

  Future<ScreenConfig> getScreen(String route) async {
    if (_screenCache.containsKey(route)) {
      return _screenCache[route]!;
    }

    try {
      final json = await _apiClient.getScreenData(route);
      final screenConfig = ScreenConfig.fromJson(json);
      _screenCache[route] = screenConfig;
      return screenConfig;
    } catch (e) {
      debugPrint('Error loading screen: $e');
      throw Exception('Failed to load screen: $e');
    }
  }

  void clearCache() {
    _screenCache.clear();
  }
}