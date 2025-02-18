import 'package:flutter/material.dart';
import 'package:stac/stac.dart';
import 'package:stac_test/screens/common/error_screen.dart';
import '../../core/models/screen_config.dart';

class DynamicScreen extends StatefulWidget {
  final String routeName;

  const DynamicScreen({
    super.key,
    required this.routeName,
  });

  @override
  State<DynamicScreen> createState() => _DynamicScreenState();
  
}

class _DynamicScreenState extends State<DynamicScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stac.fromJson(screenConfig.uiConfig, context) ??
        const ErrorScreen(error: 'Failed to load screen');
  }
}
