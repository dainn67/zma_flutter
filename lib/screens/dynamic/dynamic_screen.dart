import 'package:flutter/material.dart';
import 'package:stac/stac.dart';
import 'package:stac_test/core/di/service_locator.dart';
import 'package:stac_test/core/models/screen_config.dart';
import 'package:stac_test/core/network/api_client.dart';
import 'package:stac_test/screens/common/error_screen.dart';
import 'package:stac_test/screens/common/loading_screen.dart';

class DynamicScreen extends StatefulWidget {
  final String routeName;

  const DynamicScreen({
    super.key,
    required this.routeName,
  });

  @override
  // ignore: library_private_types_in_public_api
  _DynamicScreenState createState() => _DynamicScreenState();
}

class _DynamicScreenState extends State<DynamicScreen> {
  final apiClient = getIt<ApiClient>();

  @override
  void initState() {
    super.initState();
  }

  Future<ScreenConfig> _loadStac(String routeName) async {
    final json = await apiClient.getScreenData(routeName);
    return ScreenConfig.fromJson(json);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _loadStac(widget.routeName),
      builder: (_, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingScreen();
        } else if (snapshot.hasError) {
          return ErrorScreen(error: 'Failed to load screen: ${snapshot.error}');
        } else if (snapshot.hasData) {
          return Stac.fromJson(snapshot.data!.uiConfig, context) ?? const ErrorScreen(error: 'Failed to load screen');
        } else {
          return const ErrorScreen(error: 'Failed to load screen');
        }
      },
    );
  }
}
