import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stac_test/core/constants/shared_prefs_keys.dart';
import 'package:stac_test/core/di/service_locator.dart';
import 'package:stac_test/core/models/home_tab_config.dart';
import 'package:stac_test/core/network/api_client.dart';
import 'package:stac_test/core/routing/route_config.dart';
import 'package:stac_test/core/routing/route_management.dart';
import 'package:stac_test/core/services/screen_service.dart';
import 'package:stac_test/ui/components/custom_bottom_nav_bar.dart';
import 'package:stac_test/ui/screens/common/loading_screen.dart';
import 'package:stac_test/ui/screens/dynamic/dynamic_tab.dart';

class DrawerItem {
  final IconData icon;
  final String title;
  final int pageIndex;

  DrawerItem({required this.icon, required this.title, required this.pageIndex});
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  late final PageController _pageController;
  List<HomeTabConfig> _tabs = [];

  final List<DrawerItem> _drawerItems = [
    DrawerItem(icon: Icons.home, title: 'Home', pageIndex: 0),
    DrawerItem(icon: Icons.search, title: 'Search', pageIndex: 1),
    DrawerItem(icon: Icons.person, title: 'Profile', pageIndex: 2),
    DrawerItem(icon: Icons.settings, title: 'Settings', pageIndex: 3),
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: currentIndex);
    ScreenService.loadHomeTabs().then((tabs) => setState(() => _tabs = tabs));
    
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_tabs.isEmpty) {
      return const LoadingScreen();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(_tabs[currentIndex].name),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: _handleLogout,
          ),
        ],
      ),
      drawer: _buildDrawer(),
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

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ..._drawerItems.map((item) => ListTile(
                leading: Icon(item.icon),
                title: Text(item.title),
                onTap: () {
                  Navigator.pop(context);
                  _onChangePage(item.pageIndex);
                },
              )),
        ],
      ),
    );
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

  _handleLogout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(SharedPrefsKeys.isLoggedIn, false);
    if (context.mounted) {
      RouteManagement.instance.pushReplacementNamed(RouteConfig.login);
    }
  }
}
