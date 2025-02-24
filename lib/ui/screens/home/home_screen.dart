import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stac_test/core/constants/storage_keys.dart';
import 'package:stac_test/core/di/service_locator.dart';
import 'package:stac_test/core/models/home_tab_config.dart';
import 'package:stac_test/core/services/notification_service.dart';
import 'package:stac_test/core/services/screen_service.dart';
import 'package:stac_test/ui/common/custom_bottom_nav_bar.dart';
import 'package:stac_test/ui/screens/common/loading_screen.dart';
import 'package:stac_test/ui/screens/dynamic/dynamic_tab.dart';
import 'package:stac_test/ui/screens/home/home_drawer.dart';
import 'package:stac_test/core/services/shared_prefs_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  late final PageController _pageController;
  List<HomeTabConfig> _tabs = [];
  final _prefsService = getIt<SharedPrefsService>();

  @override
  void initState() {
    _pageController = PageController(initialPage: currentIndex);
    ScreenService.loadHomeTabs().then((tabs) => setState(() => _tabs = tabs));

    final notificationService = getIt<NotificationService>();
    notificationService.init().then((data) {
      Future.delayed(const Duration(seconds: 2), () {
        notificationService.showNotification(title: 'Hello', body: 'Hi there', id: 1).then((_) {
          print('DONE');
        });
        // notificationService.scheduleNotification(title: 'Hello', body: 'Hi there', id: 1);
      });
    });

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
      drawer: const HomeDrawer(),
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
    await _prefsService.setBool(StorageKeys.isLoggedIn, false);
    if (mounted) context.go('/login');
  }
}
