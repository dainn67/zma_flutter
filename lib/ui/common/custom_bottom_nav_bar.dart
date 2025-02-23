import 'package:flutter/material.dart';
import 'package:stac_test/core/models/home_tab_config.dart';
import 'package:stac_test/ui/common/custom_icon.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  final List<HomeTabConfig> tabs;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.tabs,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: Colors.grey,
      items: tabs
          .map((tab) => BottomNavigationBarItem(
                icon: CustomIcon(
                  source: tab.icon,
                  width: 24,
                  height: 24,
                  color: Colors.grey,
                ),
                activeIcon: CustomIcon(
                  source: tab.icon,
                  width: 24,
                  height: 24,
                  color: Theme.of(context).primaryColor,
                ),
                label: tab.name,
              ))
          .toList(),
    );
  }
} 