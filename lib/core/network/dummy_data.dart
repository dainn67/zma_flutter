import 'package:stac_test/core/routing/route_action.dart';
import 'package:stac_test/core/routing/route_config.dart';

class DummyData {
  DummyData._();

  static Map<String, dynamic> detailScreen() {
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
          "crossAxisAlignment": "center",
          "padding": {"top": 16, "left": 16, "right": 16},
          "children": [
            {
              "type": "text",
              "data": "Here is a detailed description of the item you selected. Enjoy exploring the details!",
              "textAlign": "center",
            },
            {
              "type": "mainButton",
              "title": "More Details",
              "route": "/moreDetails",
              "onPressed": {
                "actionType": "log",
                "message": "More Details Button Pressed",
              },
            },
          ]
        }
      }
    };
  }

  static Map<String, dynamic> settingsScreen() {
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
                  "onTap": {"actionType": "navigate", "routeName": "/account", "navigationStyle": "pushNamed"}
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
                  "onTap": {"actionType": "navigate", "routeName": "/language", "navigationStyle": "pushNamed"}
                }
              ]
            }
          },
          {"type": "sizedBox", "height": 16},
          {
            "type": "mainButton",
            "title": "Log",
            "isBold": true,
            "paddingHorizontal": 16,
            "paddingVertical": 12,
            "borderRadius": 8,
            "onPressed": {
              "actionType": "log",
              "message": "Logout Button Pressed",
            }
          }
        ]
      }
    };
  }

  static Map<String, dynamic> profileScreen() {
    return {
      "name": "Profile",
      "route": "/home/profile",
      "uiConfig": {
        "type": "column",
        "margin": {"top": 24, "left": 16, "right": 16},
        "padding": {"top": 24, "left": 16, "right": 16},
        "children": [
          {
            "type": "mainButton",
            "title": "Log Button",
            "onPressed": {
              "actionType": "log",
              "logType": "success",
              "message": "A success log",
            }
          },
          {"type": "sizedBox", "height": 32},
          {
            "type": "mainButton",
            "title": "Dialog Button",
            "onPressed": {
              "actionType": "openDialog",
              "child": {
                "type": "confirmDialog",
                "title": "Confirm Dialog",
                "message": "Are you sure you want to log out?",
                "onConfirm": {
                  "actionType": "log",
                  "logType": "success",
                  "message": "Confirm Button Pressed",
                },
              }
            }
          },
          {"type": "sizedBox", "height": 32},
          {
            "type": "mainButton",
            "title": "Test Go Router",
            "onPressed": {
              "actionType": "routing",
              "routeName": RouteConfig.login,
              "navigationStyle": RouteAction.pushNamed,
            }
          },
          {"type": "sizedBox", "height": 32},
          {
            "type": "mainButton",
            "title": "Predefined Route",
            "onPressed": {
              "actionType": "routing",
              "routeName": "/detail",
              "navigationStyle": RouteAction.pushNamed,
            }
          },
          {"type": "sizedBox", "height": 32},
          {
            "type": "mainButton",
            "title": "Snackbar",
            "onPressed": {
              "actionType": "showSnackBar",
              "content": {"type": "text", "data": "This is a Snackbar"},
              "action": {
                "label": "Done",
                "textColor": "#73C2FB",
                "onPressed": {
                  "actionType": "log",
                  "message": "Snackbar Action Button Pressed",
                },
              },
              "behavior": "floating"
            }
          }
        ]
      }
    };
  }
}
