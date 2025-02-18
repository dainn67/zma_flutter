import 'package:stac_test/core/di/service_locator.dart';
import 'package:stac_test/core/models/home_tab_config.dart';
import 'package:stac_test/core/models/screen_config.dart';
import 'package:stac_test/core/network/api_client.dart';

class ScreenService {
  const ScreenService._();

  static ApiClient get apiClient => getIt<ApiClient>();

  // Home screen service
  static Future<List<HomeTabConfig>> loadHomeTabs() async {
    final tabRoutes = ['/home/home', '/home/search', '/home/profile', '/home/settings'];

    final List<HomeTabConfig> tabs = [];
    for (int i = 0; i < tabRoutes.length; i++) {
      final route = tabRoutes[i];

      final tabData = await apiClient.getScreenData(route);
      if (tabData != null) {
        tabs.add(HomeTabConfig(
          index: i,
          name: tabData['name'] ?? '',
          icon: tabData['icon'] ?? '',
          uiConfig: tabData['uiConfig'] ?? {},
        ));
      }
    }

    return tabs;
  }

  // Dynamic screen service
  static Future<ScreenConfig?> loadScreenConfig(String routeName) async {
    final json = await apiClient.getScreenData(routeName);
    if (json == null) {
      return null;
    }
    return ScreenConfig.fromJson(json);
  }
}
