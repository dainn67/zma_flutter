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
            "title": "Log",
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
            "type": "card",
            "child": {
              "type": "column",
              "children": [
                {
                  "type": "listTile",
                  "title": {"type": "text", "data": "Edit Profile"},
                  "onTap": {"actionType": "navigate", "routeName": "/profile/edit", "navigationStyle": "pushNamed"}
                },
                {"type": "divider", "height": 1},
                {
                  "type": "listTile",
                  "title": {"type": "text", "data": "Change Password"},
                  "onTap": {"actionType": "navigate", "routeName": "/profile/password", "navigationStyle": "pushNamed"}
                },
                {"type": "divider", "height": 1},
                {
                  "type": "listTile",
                  "title": {"type": "text", "data": "Privacy Settings"},
                  "onTap": {"actionType": "navigate", "routeName": "/profile/privacy", "navigationStyle": "pushReplacementNamed"}
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
}
