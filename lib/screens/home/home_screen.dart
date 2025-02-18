import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stac_test/core/constants/shared_prefs_keys.dart';
import 'package:stac_test/core/di/service_locator.dart';
import 'package:stac_test/core/models/home_tab_config.dart';
import 'package:stac_test/core/routing/route_config.dart';
import 'package:stac_test/core/routing/route_management.dart';
import 'package:stac_test/core/services/screen_service.dart';
import 'package:stac_test/core/widgets/custom_bottom_nav_bar.dart';
import 'package:stac_test/screens/dynamic/dynamic_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  late final PageController _pageController;
  late final List<HomeTabConfig> _tabs;

  final screenService = getIt<ScreenService>();

  @override
  void initState() {
    _pageController = PageController(initialPage: currentIndex);
    _tabs = _getTabConfigurations();

    screenService.getScreen(RouteConfig.home);

    super.initState();
  }

  List<HomeTabConfig> _getTabConfigurations() {
    return [
      _createTabConfig(
        index: 0,
        name: 'Home',
        content: 'Home Tab',
      ),
      _createTabConfig(
        index: 1,
        name: 'Search',
        content: 'Search Tab',
      ),
      _createTabConfig(
        index: 2,
        name: 'Profile',
        content: 'Profile Tab',
      ),
      _createTabConfig(
        index: 3,
        name: 'Settings',
        content: 'Settings Tab',
      ),
    ];
  }

  HomeTabConfig _createTabConfig({
    required int index,
    required String name,
    required String content,
  }) {
    return HomeTabConfig(
        index: index,
        name: name,
        icon: 'assets/icons/home.png',
        uiConfig: {
          'type': 'column',
          'children': [
            {
              'type': 'container',
              'padding': {'all': 16.0},
              'child': {
                'type': 'column',
                'mainAxisAlignment': 'center',
                'crossAxisAlignment': 'center',
                'children': [
                  {
                    'type': 'text',
                    'data': 'Welcome to the $name tab',
                    'style': {'fontSize': 16.0, 'color': '#757575'}
                  },
                  {
                    'type': 'elevatedButton',
                    'child': {
                      'type': 'text',
                      'data': 'Navigate to Details'
                    },
                    'onPressed': {
                      'actionType': 'navigate',
                      'routeName': '/details',
                      'navigationStyle': 'pushNamed'
                    }
                  }
                ]
              }
            }
          ]
        });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  _onChangePage(int index) {
    setState(() => currentIndex = index);
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  _onPageViewChanged(int index) {
    setState(() => currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tabs[currentIndex].name),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              final prefs = await SharedPreferences.getInstance();
              await prefs.setBool(SharedPrefsKeys.isLoggedIn, false);
              if (context.mounted) {
                RouteManagement.instance
                    .pushReplacementNamed(RouteConfig.login);
              }
            },
          ),
        ],
      ),
      body: PageView(
        onPageChanged: _onPageViewChanged,
        controller: _pageController,
        children: _tabs.map((tab) => DynamicTab(tab: tab)).toList(),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: currentIndex,
        onTap: _onChangePage,
        tabs: _tabs,
      ),
    );
  }
}
