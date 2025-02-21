import 'package:flutter/material.dart';
import 'package:stac_test/core/routing/route_management.dart';
import 'package:stac_test/core/stac_parser/data_classes/components/confirm_dialog.dart';
import 'package:stac_test/ui/components/main_button.dart';

class DrawerItem {
  final IconData icon;
  final String title;
  final int pageIndex;

  DrawerItem({
    required this.icon,
    required this.title,
    required this.pageIndex,
  });
}

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({super.key});

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  final List<DrawerItem> _drawerItems = [
    DrawerItem(icon: Icons.home, title: 'Home', pageIndex: 0),
    DrawerItem(icon: Icons.search, title: 'Search', pageIndex: 1),
    DrawerItem(icon: Icons.person, title: 'Profile', pageIndex: 2),
    DrawerItem(icon: Icons.settings, title: 'Settings', pageIndex: 3),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              'Drawer Header',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ..._drawerItems.map((item) => ListTile(
                leading: Icon(item.icon),
                title: Text(item.title),
                onTap: () async {
                  if (mounted) {
                    showDialog(
                      context: context,
                      builder: (context) => Center(
                        child: Wrap(
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 16),
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text(
                                    'Confirm Dialog',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  const Text(
                                    'Are you sure you want to logout?',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  const SizedBox(height: 30),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                          child: MainButton(
                                        title: 'Cancel',
                                        paddingVertical: 16,
                                        borderRadius: 16,
                                        onPressed: () {},
                                      )),
                                      const SizedBox(width: 16),
                                      Expanded(
                                          child: MainButton(
                                        title: 'Confirm',
                                        paddingVertical: 16,
                                        borderRadius: 16,
                                        onPressed: () {},
                                      )),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }
                },
              )),
        ],
      ),
    );
  }
}
