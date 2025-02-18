class ScreenConfig {
  final String name;
  final String route;
  final Map<String, dynamic> uiConfig;

  ScreenConfig({
    required this.name,
    required this.route,
    required this.uiConfig,
  });

  factory ScreenConfig.fromJson(Map<String, dynamic> json) {
    return ScreenConfig(
      name: json['name'] as String,
      route: json['route'] as String,
      uiConfig: json['uiConfig'] as Map<String, dynamic>,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'route': route,
      'uiConfig': uiConfig,
    };
  }
}
