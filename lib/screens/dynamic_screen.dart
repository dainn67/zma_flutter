import 'package:flutter/material.dart';
import 'package:stac/stac.dart';
import '../core/models/screen_config.dart';

class DynamicScreen extends StatelessWidget {
  final ScreenConfig screenConfig;

  const DynamicScreen({
    Key? key,
    required this.screenConfig,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stac.fromJson(screenConfig.uiConfig, context) ?? const SizedBox.shrink();
  }
} 