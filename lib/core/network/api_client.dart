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
      case '/home/settings':
        return _getSettingsScreen();
      case '/home/profile':
        return _getProfileScreen();
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
              "data":
                  "Here is a detailed description of the item you selected. Enjoy exploring the details!",
            },
            {
              "type": "customButton",
              "title": "More Details",
              "route": "/moreDetails",
            },
            {
              "type": "filledButton",
              "title": "Fill Form",
              "onPressed": {
                "actionType": "log",
                "message": "Fill Form Button Pressed",
              },
            }
          ]
        }
      }
    };
  }

  Map<String, dynamic> _getSettingsScreen() {
    return {
      "name": "Settings",
      "route": "/home/settings",
      "uiConfig": {
        "type": "column",
        "padding": {"top": 16, "left": 16, "right": 16},
        "children": [
          {
            "type": "card",
            "child": {
              "type": "column",
              "children": [
                {
                  "type": "listTile",
                  "title": {"type": "text", "data": "Account Settings"},
                  "onTap": {
                    "actionType": "navigate",
                    "routeName": "/account",
                    "navigationStyle": "pushNamed"
                  }
                },
                {"type": "divider", "height": 1},
                {
                  "type": "listTile",
                  "title": {"type": "text", "data": "Notifications"},
                  "onTap": {"actionType": "toggle", "target": "notifications"}
                }
              ]
            }
          },
          {"type": "sizedBox", "height": 16},
          {
            "type": "card",
            "child": {
              "type": "column",
              "children": [
                {
                  "type": "listTile",
                  "title": {"type": "text", "data": "Dark Mode"},
                  "onTap": {"actionType": "toggle", "target": "darkMode"}
                },
                {"type": "divider", "height": 1},
                {
                  "type": "listTile",
                  "title": {"type": "text", "data": "Language"},
                  "subtitle": {"type": "text", "data": "English"},
                  "onTap": {
                    "actionType": "navigate",
                    "routeName": "/language",
                    "navigationStyle": "pushNamed"
                  }
                }
              ]
            }
          },
          {"type": "sizedBox", "height": 16},
          {
            "type": "customButton",
            "route": "/details",
            "title": "Logout",
            "isBold": true,
            "isEnabled": true,
            "paddingHorizontal": 16,
            "paddingVertical": 12,
            "borderRadius": 8,
          }
        ]
      }
    };
  }

  Map<String, dynamic> _getProfileScreen() {
    return {
      "name": "Profile",
      "route": "/home/profile",
      "uiConfig": {
        "type": "column",
        "margin": {"top": 24, "left": 16, "right": 16},
        "padding": {"top": 24, "left": 16, "right": 16},
        "children": [
          {
            "type": "column",
            "children": [
              {"type": "sizedBox", "height": 16},
              {
                "type": "text",
                "data": "John Doe",
                "style": {"fontSize": 24, "fontWeight": "w600"}
              },
              {
                "type": "text",
                "data": "john.doe@example.com",
                "style": {"fontSize": 16, "color": "#666666"}
              }
            ]
          },
          {"type": "sizedBox", "height": 32},
          {
            "type": "mainButton",
            "title": "Edit Profile",
            "isEnabled": true,
            "paddingHorizontal": 16,
            "paddingVertical": 12,
            "borderRadius": 20,
            "route": "/profile/edit",
          },
          {"type": "sizedBox", "height": 32},
          {
            "type": "card",
            "child": {
              "type": "column",
              "children": [
                {
                  "type": "listTile",
                  "title": {"type": "text", "data": "Edit Profile"},
                  "onTap": {
                    "actionType": "navigate",
                    "routeName": "/profile/edit",
                    "navigationStyle": "pushNamed"
                  }
                },
                {"type": "divider", "height": 1},
                {
                  "type": "listTile",
                  "title": {"type": "text", "data": "Change Password"},
                  "onTap": {
                    "actionType": "navigate",
                    "routeName": "/profile/password",
                    "navigationStyle": "pushNamed"
                  }
                },
                {"type": "divider", "height": 1},
                {
                  "type": "listTile",
                  "title": {"type": "text", "data": "Privacy Settings"},
                  "onTap": {
                    "actionType": "navigate",
                    "routeName": "/profile/privacy",
                    "navigationStyle": "pushNamed"
                  }
                }
              ]
            }
          },
          {"type": "sizedBox", "height": 24},
          {
            "type": "card",
            "child": {
              "type": "column",
              "children": [
                {
                  "type": "listTile",
                  "title": {"type": "text", "data": "Phone"},
                  "subtitle": {"type": "text", "data": "+1 234 567 8900"}
                },
                {"type": "divider", "height": 1},
                {
                  "type": "listTile",
                  "title": {"type": "text", "data": "Location"},
                  "subtitle": {"type": "text", "data": "New York, USA"}
                }
              ]
            }
          }
        ]
      }
    };
  }

  void dispose() {
    _client.close();
  }
}
