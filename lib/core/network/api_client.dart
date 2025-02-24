import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:stac_test/core/network/dummy_data.dart';

class ApiClient {
  final String baseUrl;
  final http.Client _client;

  ApiClient({
    required this.baseUrl,
    http.Client? client,
  }) : _client = client ?? http.Client();

  Future<Map<String, dynamic>?> getScreenData(String inputRoute) async {
    // Normalize the route
    String route = inputRoute;
    if (!route.startsWith('/')) {
      route = '/$route';
    }

    switch (route) {
      case '/details':
        return DummyData.detailScreen();
      case '/home/settings':
        return DummyData.settingsScreen();
      case '/home/profile':
        return DummyData.profileScreen();
      default:
        return await _fetchScreenDataFromServer(route);
    }
  }

  Future<Map<String, dynamic>?> _fetchScreenDataFromServer(String route) async {
    try {
      var response = await _client.get(Uri.parse('$baseUrl$route'));

      if (response.statusCode == 200) {
        return Map<String, dynamic>.from(jsonDecode(response.body));
      }
    } catch (e) {
      debugPrint('Fetching screen data failed: $e');
    }
    return null;
  }

  void dispose() {
    _client.close();
  }
}
