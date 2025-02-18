import 'package:flutter/material.dart';
import 'package:stac/stac.dart';
import 'package:stac_test/core/services/screen_service.dart';
import 'package:stac_test/screens/common/error_screen.dart';
import 'package:stac_test/screens/common/loading_screen.dart';

class DynamicScreen extends StatelessWidget {
  final String routeName;

  const DynamicScreen({
    super.key,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ScreenService.loadScreenConfig(routeName),
      builder: (_, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingScreen();
        }

        if (snapshot.hasError) {
          return ErrorScreen(error: 'Failed to load screen: ${snapshot.error}');
        }

        if (snapshot.hasData && snapshot.data != null) {
          return Stac.fromJson(snapshot.data!.uiConfig, context) ?? const ErrorScreen(error: 'Stac failed to load screen');
        }

        return const ErrorScreen(error: 'Failed to load screen data');
      },
    );
  }
}
