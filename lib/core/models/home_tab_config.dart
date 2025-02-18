class HomeTabConfig {
  final String name;
  final String icon;
  final Map<String, dynamic>? uiConfig;
  final int index;

  const HomeTabConfig({
    required this.name,
    required this.icon,
    required this.index,
    required this.uiConfig,
  });

  factory HomeTabConfig.fromJson(Map<String, dynamic> json) {
    return HomeTabConfig(
      name: json['name'] as String,
      icon: json['icon'] as String,
      index: json['index'] as int,
      uiConfig: json['uiConfig'] as Map<String, dynamic>?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'icon': icon,
      'index': index,
      'uiConfig': uiConfig,
    };
  }
}