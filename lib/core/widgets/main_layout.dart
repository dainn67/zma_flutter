import 'package:flutter/material.dart';
import '../widgets/custom_bottom_nav_bar.dart';

class MainLayout extends StatefulWidget {
  final Widget child;

  const MainLayout({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _currentIndex = 0;

  void _onNavTap(int index) {
    setState(() {
      _currentIndex = index;
    });
    // Here you can add your navigation logic
    // For example, using your routing system to navigate to different screens
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onNavTap,
      ),
    );
  }
} 