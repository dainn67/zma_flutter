class HomeTabConfig {
  final int index;
  final String name;
  final String icon;
  final Map<String, dynamic> uiConfig;

  HomeTabConfig({
    required this.index,
    required this.name,
    required this.icon,
    required this.uiConfig,
  });

  factory HomeTabConfig.fromJson(Map<String, dynamic> json) {
    return HomeTabConfig(
      index: json['index'] as int,
      name: json['name'] as String,
      icon: json['icon'] as String,
      uiConfig: json['uiConfig'] as Map<String, dynamic>,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'index': index,
      'name': name,
      'icon': icon,
      'uiConfig': uiConfig,
    };
  }
}