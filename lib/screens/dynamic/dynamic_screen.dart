import 'package:flutter/material.dart';
import 'package:stac/stac.dart';
import 'package:stac_test/screens/common/error_screen.dart';
import '../../core/models/screen_config.dart';

class DynamicScreen extends StatelessWidget {
  final ScreenConfig screenConfig;

  const DynamicScreen({
    super.key,
    required this.screenConfig,
  });

  @override
  Widget build(BuildContext context) {
    return Stac.fromJson(screenConfig.uiConfig, context) ??
        const ErrorScreen(error: 'Failed to load screen');
  }
}
