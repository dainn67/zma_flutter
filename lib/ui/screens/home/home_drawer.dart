import 'package:flutter/material.dart';

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
                },
              )),
        ],
      ),
    );
  }
}
