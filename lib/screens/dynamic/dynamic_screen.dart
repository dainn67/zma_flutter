import 'package:flutter/material.dart';
import 'package:stac/stac.dart';
import 'package:stac_test/core/di/service_locator.dart';
import 'package:stac_test/core/services/screen_service.dart';
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
  final screenService = getIt<ScreenService>();

  ScreenConfig? screenConfig;

  @override
  void initState() {
    super.initState();

    screenService.getScreen(widget.routeName).then((value) {
      setState(() {
        screenConfig = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return screenConfig != null
        ? Stac.fromJson(screenConfig!.uiConfig, context) ??
            const ErrorScreen(error: 'Failed to load screen')
        : const ErrorScreen(error: 'Failed to load screen');
  }
}
