import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

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
        return _getDetailScreen();
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

      return null;
    } catch (e) {
      debugPrint('Fetching screen data failed: $e');
      return null;
    }
  }

  Map<String, dynamic> _getDetailScreen() {
    return {
      "name": "Detail",
      "route": "/detail",
      "uiConfig": {
        "type": "scaffold",
        "appBar": {
          "type": "appBar",
          "title": {"type": "text", "data": "Detail Screen"},
        },
        "body": {
          "type": "column",
          "padding": {"top": 16, "left": 16, "right": 16},
          "children": [
            {
              "type": "text",
              "data": "Here is a detailed description of the item you selected. Enjoy exploring the details!",
            },
            {
              "type": "filledButton",
              "style": {
                "backgroundColor": "#03DAC5",
                "shape": {"borderRadius": 8},
                "padding": {"top": 12, "bottom": 12, "left": 16, "right": 16},
              },
              "onPressed": {"actionType": "navigate", "routeName": "/moreDetails", "navigationStyle": "pushNamed"},
              "child": {
                "type": "text",
                "data": "More Details",
                "style": {"fontSize": 18, "fontWeight": "w500", "color": "#ffffff"}
              }
            },
          ]
        }
      }
    };
  }

  void dispose() {
    _client.close();
  }
}
