import 'package:flutter/material.dart';
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
      debugPrint('Fetching screen data for route: $route');

      switch (route) {
        case '/':
          return _getHomeScreen();
        case '/form':
          return _getFormScreen();
        default:
          throw Exception('Screen not found');
      }
    } catch (e) {
      debugPrint('Error in getScreenData: $e');
      throw Exception('Failed to load screen data: $e');
    }
  }

  Map<String, dynamic> _getHomeScreen() {
    return {
      "name": "Home",
      "route": "/",
      "uiConfig": {
        "type": "scaffold",
        "backgroundColor": "#F5F6FA",
        "appBar": {
          "type": "appBar",
          "elevation": 0,
          "backgroundColor": "#4A00E0",
          "title": {
            "type": "text",
            "data": "Stac SDUI",
            "style": {
              "color": "#ffffff",
              "fontSize": 24,
              "fontWeight": "w700"
            }
          }
        },
        "body": {
          "type": "container",
          "margin": {
            "all": 16
          },
          "padding": {
            "all": 16
          },
          "decoration": {
            "gradient": {
              "begin": "topCenter",
              "end": "bottomCenter",
              "colors": ["#4A00E0", "#8E2DE2"]
            }
          },
          "child": {
            "type": "singleChildScrollView",
            "child": {
              "type": "container",
              "padding": {
                "all": 24
              },
              "child": {
                "type": "column",
                "mainAxisAlignment": "start",
                "crossAxisAlignment": "stretch",
                "children": [
                  {
                    "type": "container",
                    "margin": {
                      "bottom": 32
                    },
                    "child": {
                      "type": "column",
                      "crossAxisAlignment": "start",
                      "children": [
                        {
                          "type": "text",
                          "data": "Welcome to",
                          "style": {
                            "fontSize": 32,
                            "fontWeight": "w300",
                            "color": "#ffffff"
                          }
                        },
                        {
                          "type": "text",
                          "data": "Server-Driven UI",
                          "style": {
                            "fontSize": 40,
                            "fontWeight": "w700",
                            "color": "#ffffff"
                          }
                        }
                      ]
                    }
                  },
                  {
                    "type": "container",
                    "margin": {
                      "bottom": 24
                    },
                    "decoration": {
                      "color": "#ffffff",
                      "borderRadius": 16,
                      "boxShadow": [
                        {
                          "color": "#00000020",
                          "blurRadius": 10,
                          "spreadRadius": 0,
                          "offset": {
                            "dx": 0,
                            "dy": 4
                          }
                        }
                      ]
                    },
                    "child": {
                      "type": "container",
                      "padding": {
                        "all": 24
                      },
                      "child": {
                        "type": "column",
                        "crossAxisAlignment": "start",
                        "children": [
                          {
                            "type": "container",
                            "margin": {
                              "bottom": 16
                            },
                            "decoration": {
                              "color": "#F0F3FF",
                              "borderRadius": 12
                            },
                            "padding": {
                              "all": 12
                            },
                            "child": {
                              "type": "icon",
                              "iconType": "material",
                              "icon": "devices",
                              "size": 32,
                              "color": "#4A00E0"
                            }
                          },
                          {
                            "type": "text",
                            "data": "Dynamic UI Components",
                            "style": {
                              "fontSize": 24,
                              "fontWeight": "w600",
                              "color": "#1A1A1A"
                            }
                          },
                          {
                            "type": "sizedBox",
                            "height": 8
                          },
                          {
                            "type": "text",
                            "data": "Experience the power of server-driven UI with dynamic components that adapt to your needs",
                            "style": {
                              "fontSize": 16,
                              "color": "#666666",
                              "height": 1.5
                            }
                          }
                        ]
                      }
                    }
                  },
                  {
                    "type": "container",
                    "height": 56,
                    "child": {
                      "type": "elevatedButton",
                      "style": {
                        "backgroundColor": "#ffffff",
                        "elevation": 0,
                        "borderRadius": 28
                      },
                      "child": {
                        "type": "row",
                        "mainAxisAlignment": "center",
                        "children": [
                          {
                            "type": "text",
                            "data": "Try Form Demo",
                            "style": {
                              "fontSize": 18,
                              "fontWeight": "w600",
                              "color": "#4A00E0"
                            }
                          },
                          {
                            "type": "sizedBox",
                            "width": 8
                          },
                          {
                            "type": "icon",
                            "iconType": "material",
                            "icon": "arrow_forward",
                            "color": "#4A00E0"
                          }
                        ]
                      },
                      "onPressed": {
                        "actionType": "navigate",
                        "routeName": "/form",
                        "navigationStyle": "pushNamed"
                      }
                    }
                  }
                ]
              }
            }
          }
        }
      }
    };
  }

  Map<String, dynamic> _getFormScreen() {
    return {
      "name": "Form",
      "route": "/form",
      "uiConfig": {
        "type": "scaffold",
        "backgroundColor": "#F5F6FA",
        "appBar": {
          "type": "appBar",
          "elevation": 0,
          "backgroundColor": "#4A00E0",
          "title": {
            "type": "text",
            "data": "Form Demo",
            "style": {
              "color": "#ffffff",
              "fontSize": 24,
              "fontWeight": "w700"
            }
          },
          "leading": {
            "type": "iconButton",
            "icon": {
              "type": "icon",
              "iconType": "material",
              "icon": "arrow_back",
              "color": "#ffffff"
            },
            "onPressed": {
              "actionType": "navigate",
              "navigationStyle": "pop"
            }
          }
        },
        "body": {
          "type": "singleChildScrollView",
          "child": {
            "type": "container",
            "padding": {
              "all": 24
            },
            "child": {
              "type": "column",
              "mainAxisAlignment": "start",
              "crossAxisAlignment": "stretch",
              "children": [
                {
                  "type": "container",
                  "margin": {
                    "bottom": 24
                  },
                  "decoration": {
                    "color": "#ffffff",
                    "borderRadius": 16,
                    "boxShadow": [
                      {
                        "color": "#00000020",
                        "blurRadius": 10,
                        "spreadRadius": 0,
                        "offset": {
                          "dx": 0,
                          "dy": 4
                        }
                      }
                    ]
                  },
                  "child": {
                    "type": "container",
                    "padding": {
                      "all": 24
                    },
                    "child": {
                      "type": "column",
                      "crossAxisAlignment": "stretch",
                      "children": [
                        {
                          "type": "textField",
                          "decoration": {
                            "labelText": "Name",
                            "hintText": "Enter your name",
                            "filled": true,
                            "fillColor": "#F5F6FA",
                            "border": {
                              "borderRadius": 12
                            }
                          }
                        },
                        {
                          "type": "sizedBox",
                          "height": 16
                        },
                        {
                          "type": "textField",
                          "decoration": {
                            "labelText": "Email",
                            "hintText": "Enter your email",
                            "filled": true,
                            "fillColor": "#F5F6FA",
                            "border": {
                              "borderRadius": 12
                            }
                          },
                          "keyboardType": "emailAddress"
                        },
                        {
                          "type": "sizedBox",
                          "height": 16
                        },
                        {
                          "type": "textField",
                          "decoration": {
                            "labelText": "Phone",
                            "hintText": "Enter your phone number",
                            "filled": true,
                            "fillColor": "#F5F6FA",
                            "border": {
                              "borderRadius": 12
                            }
                          },
                          "keyboardType": "phone"
                        },
                        {
                          "type": "sizedBox",
                          "height": 24
                        },
                        {
                          "type": "container",
                          "height": 56,
                          "child": {
                            "type": "elevatedButton",
                            "style": {
                              "backgroundColor": "#4A00E0",
                              "elevation": 0,
                              "borderRadius": 28
                            },
                            "child": {
                              "type": "row",
                              "mainAxisAlignment": "center",
                              "children": [
                                {
                                  "type": "text",
                                  "data": "Submit Form",
                                  "style": {
                                    "fontSize": 18,
                                    "fontWeight": "w600",
                                    "color": "#ffffff"
                                  }
                                },
                                {
                                  "type": "sizedBox",
                                  "width": 8
                                },
                                {
                                  "type": "icon",
                                  "iconType": "material",
                                  "icon": "check_circle",
                                  "color": "#ffffff"
                                }
                              ]
                            },
                            "onPressed": {
                              "actionType": "request",
                              "request": {
                                "url": "https://jsonplaceholder.typicode.com/posts",
                                "method": "post",
                                "headers": {
                                  "Content-Type": "application/json"
                                },
                                "body": {
                                  "title": "Form Submission",
                                  "body": "User form data"
                                }
                              },
                              "onSuccess": {
                                "actionType": "navigate",
                                "widgetJson": {
                                  "type": "scaffold",
                                  "backgroundColor": "#F5F6FA",
                                  "appBar": {
                                    "type": "appBar",
                                    "elevation": 0,
                                    "backgroundColor": "#4A00E0",
                                    "title": {
                                      "type": "text",
                                      "data": "Success",
                                      "style": {
                                        "color": "#ffffff",
                                        "fontSize": 24,
                                        "fontWeight": "w700"
                                      }
                                    },
                                    "leading": {
                                      "type": "iconButton",
                                      "icon": {
                                        "type": "icon",
                                        "iconType": "material",
                                        "icon": "arrow_back",
                                        "color": "#ffffff"
                                      },
                                      "onPressed": {
                                        "actionType": "navigate",
                                        "navigationStyle": "pop"
                                      }
                                    }
                                  },
                                  "body": {
                                    "type": "container",
                                    "padding": {
                                      "all": 24
                                    },
                                    "child": {
                                      "type": "column",
                                      "mainAxisAlignment": "center",
                                      "crossAxisAlignment": "center",
                                      "children": [
                                        {
                                          "type": "container",
                                          "margin": {
                                            "bottom": 24
                                          },
                                          "decoration": {
                                            "color": "#E8F5E9",
                                            "borderRadius": 100
                                          },
                                          "padding": {
                                            "all": 24
                                          },
                                          "child": {
                                            "type": "icon",
                                            "iconType": "material",
                                            "icon": "check_circle",
                                            "size": 64,
                                            "color": "#4CAF50"
                                          }
                                        },
                                        {
                                          "type": "text",
                                          "data": "Form Submitted Successfully!",
                                          "style": {
                                            "fontSize": 24,
                                            "fontWeight": "w600",
                                            "color": "#1A1A1A"
                                          }
                                        },
                                        {
                                          "type": "sizedBox",
                                          "height": 8
                                        },
                                        {
                                          "type": "text",
                                          "data": "Thank you for your submission",
                                          "style": {
                                            "fontSize": 16,
                                            "color": "#666666"
                                          }
                                        },
                                        {
                                          "type": "sizedBox",
                                          "height": 32
                                        },
                                        {
                                          "type": "container",
                                          "height": 56,
                                          "child": {
                                            "type": "elevatedButton",
                                            "style": {
                                              "backgroundColor": "#4A00E0",
                                              "elevation": 0,
                                              "borderRadius": 28
                                            },
                                            "child": {
                                              "type": "text",
                                              "data": "Back to Home",
                                              "style": {
                                                "fontSize": 18,
                                                "fontWeight": "w600",
                                                "color": "#ffffff"
                                              }
                                            },
                                            "onPressed": {
                                              "actionType": "navigate",
                                              "navigationStyle": "popUntil",
                                              "routeName": "/"
                                            }
                                          }
                                        }
                                      ]
                                    }
                                  }
                                },
                                "navigationStyle": "push"
                              }
                            }
                          }
                        }
                      ]
                    }
                  }
                }
              ]
            }
          }
        }
      }
    };
  }

  void dispose() {
    _client.close();
  }
} 