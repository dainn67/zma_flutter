import 'package:flutter/material.dart';
import 'package:stac/stac.dart';
import 'package:stac_test/core/models/home_tab_config.dart';
import 'package:stac_test/ui/screens/common/error_screen.dart';

class DynamicTab extends StatefulWidget {
  final HomeTabConfig tab;

  const DynamicTab({super.key, required this.tab});

  @override
  State<DynamicTab> createState() => _DynamicTabState();
}

class _DynamicTabState extends State<DynamicTab> {
  @override
  Widget build(BuildContext context) {
    return Stac.fromJson(widget.tab.uiConfig, context) ?? ErrorScreen(error: 'Failed to load tab ${widget.tab.name}');
  }
}
