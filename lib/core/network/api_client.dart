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

  Future<Map<String, dynamic>> getScreenData(String route) async {
    try {
      debugPrint('Route: $route');

      switch (route) {
        case '/':
          return _getHomeScreen();
        default:
          return await _fetchScreenDataFromServer(route);
      }
    } catch (e) {
      debugPrint('Error in getScreenData: $e');
      throw Exception('Failed to load screen data: $e');
    }
  }

  Future<Map<String, dynamic>> _fetchScreenDataFromServer(String route) async {
    var response = await _client.get(Uri.parse('$baseUrl$route'));

    if (response.statusCode == 200) {
      return Map<String, dynamic>.from(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load screen data from server');
    }
  }

  Map<String, dynamic> _getHomeScreen() {
    return {
      "name": "Home",
      "route": "/home",
      "uiConfig": {
        "type": "scaffold",
        "body": {
          "type": "padding",
          "padding": {"top": 80, "left": 24, "right": 24, "bottom": 24},
          "child": {
            "type": "column",
            "crossAxisAlignment": "start",
            "children": [
              {
                "type": "container",
                "width": 56,
                "height": 56,
                "decoration": {"borderRadius": 12},
                "clipBehavior": "hardEdge",
                "child": {
                  "type": "image",
                  "src":
                      "https://pbs.twimg.com/profile_images/1886322776921042944/5Nveo4M2_400x400.png"
                }
              },
              {"type": "sizedBox", "height": 40},
              {
                "type": "image",
                "src":
                    "https://raw.githubusercontent.com/StacDev/stac/refs/heads/dev/assets/Welcome%20to.png"
              },
              {
                "type": "text",
                "data": "Stac Playground",
                "style": {"fontSize": 36, "fontWeight": "w600", "height": 1.3}
              },
              {"type": "sizedBox", "height": 32},
              {
                "type": "text",
                "data":
                    "Stac is a Server-Driven UI (SDUI) framework for Flutter. Stac allows you to build beautiful cross-platform applications with JSON in real time.",
                "style": {"fontSize": 18, "fontWeight": "w400", "height": 1.5}
              },
              {"type": "sizedBox", "height": 32},
              {
                "type": "filledButton",
                "style": {
                  "backgroundColor": "#212121",
                  "shape": {"borderRadius": 8},
                  "padding": {"top": 14, "bottom": 14, "left": 16, "right": 16},
                },
                "onPressed": {
                  "actionType": "navigate",
                  "routeName": "/form",
                  "navigationStyle": "pushNamed"
                },
                "child": {
                  "type": "text",
                  "data": "Form screen",
                  "style": {
                    "fontSize": 18,
                    "fontWeight": "w500",
                    "color": "#ffffff"
                  }
                }
              },
              {"type": "spacer"},
              {
                "type": "container",
                "height": 1,
                "widht": 1000,
                "color": "#20010810"
              },
              {"type": "sizedBox", "height": 24},
              {
                "type": "text",
                "data": "Follow us for more updates:",
                "style": {
                  "fontSize": 18,
                  "fontWeight": "w400",
                  "height": 1.5,
                  "color": "#80010810"
                }
              },
              {"type": "sizedBox", "height": 20},
              {
                "type": "column",
                "spacing": 20,
                "children": [
                  {
                    "type": "row",
                    "spacing": 20,
                    "children": [
                      {
                        "type": "container",
                        "width": 44,
                        "height": 44,
                        "decoration": {"borderRadius": 12},
                        "clipBehavior": "hardEdge",
                        "child": {
                          "type": "image",
                          "src":
                              "https://raw.githubusercontent.com/StacDev/stac/refs/heads/dev/assets/github.png"
                        }
                      },
                      {
                        "type": "text",
                        "data": "github.com/StacDev",
                        "style": {
                          "fontSize": 18,
                          "fontWeight": "w500",
                          "height": 1.5
                        }
                      }
                    ]
                  },
                  {
                    "type": "row",
                    "spacing": 20,
                    "children": [
                      {
                        "type": "container",
                        "width": 44,
                        "height": 44,
                        "decoration": {"borderRadius": 12},
                        "clipBehavior": "hardEdge",
                        "child": {
                          "type": "image",
                          "src":
                              "https://raw.githubusercontent.com/StacDev/stac/refs/heads/dev/assets/x.png"
                        }
                      },
                      {
                        "type": "text",
                        "data": "x.com/stac_dev",
                        "style": {
                          "fontSize": 18,
                          "fontWeight": "w500",
                          "height": 1.5
                        }
                      }
                    ]
                  },
                  {
                    "type": "row",
                    "spacing": 20,
                    "children": [
                      {
                        "type": "container",
                        "width": 44,
                        "height": 44,
                        "decoration": {"borderRadius": 12},
                        "clipBehavior": "hardEdge",
                        "child": {
                          "type": "image",
                          "src":
                              "https://raw.githubusercontent.com/StacDev/stac/refs/heads/dev/assets/linkedin.png"
                        }
                      },
                      {
                        "type": "text",
                        "data": "/company/StacDev",
                        "style": {
                          "fontSize": 18,
                          "fontWeight": "w500",
                          "height": 1.5
                        }
                      }
                    ]
                  }
                ]
              }
            ]
          }
        }
      }
    };
  }

  void dispose() {
    _client.close();
  }
}
