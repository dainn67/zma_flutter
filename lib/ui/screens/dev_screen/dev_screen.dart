import 'package:flutter/material.dart';
import 'package:stac_test/core/di/service_locator.dart';
import 'package:stac_test/core/services/notification_service.dart';
import 'package:stac_test/ui/common/main_button.dart';
import 'package:toastification/toastification.dart';

class DevScreen extends StatelessWidget {
  const DevScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Developer Tools'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // App Info Section
          _buildSection(
            'App Information',
            [
              _buildInfoTile('App Version', '1.0.0'),
              _buildInfoTile('Build Number', '1'),
              _buildInfoTile('Environment', 'Development'),
            ],
          ),
          MainButton(
              title: 'Toast',
              onPressed: () {
                toastification.show(
                  title: const Text('Hello'),
                  description: const Text('This is a toast'),
                  type: ToastificationType.warning,
                  style: ToastificationStyle.fillColored,
                  autoCloseDuration: const Duration(seconds: 3),
                  alignment: Alignment.bottomCenter,
                  animationDuration: const Duration(milliseconds: 200),
                  showProgressBar: false,
                );
              }),
          MainButton(
              title: 'Notification',
              onPressed: () {
                final notificationService = getIt<NotificationService>();
                notificationService.showNotification(
                  title: 'Hello',
                  body: 'This is a notification',
                );
              }),
        ],
      ),
    );
  }

  Widget _buildSection(String title, List<Widget> children) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ...children,
        ],
      ),
    );
  }

  Widget _buildInfoTile(String title, String value) {
    return ListTile(
      title: Text(title),
      trailing: Text(value),
      dense: true,
    );
  }

  Widget _buildActionTile(
    String title,
    String subtitle,
    IconData icon,
    VoidCallback onTap,
  ) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}
