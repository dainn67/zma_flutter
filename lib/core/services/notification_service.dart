import 'package:flutter/cupertino.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

class NotificationService {
  static const _channelKey = 'basic_channel';
  static const _channelName = 'Basic Notifications';
  static const _channelDescription = 'Basic notification channel';

  Future<void> initialize() async {
    await AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
          channelKey: _channelKey,
          channelName: _channelName,
          channelDescription: _channelDescription,
          defaultColor: const Color(0xFF9D50DD),
          ledColor: const Color(0xFF9D50DD),
          importance: NotificationImportance.High,
        ),
      ],
    );

    AwesomeNotifications().setListeners(
      onActionReceivedMethod: _onActionReceivedMethod,
      onNotificationCreatedMethod: _onNotificationCreatedMethod,
      onNotificationDisplayedMethod: _onNotificationDisplayedMethod,
      onDismissActionReceivedMethod: _onDismissActionReceivedMethod,
    );
  }

  Future<void> requestPermission() async {
    await AwesomeNotifications().requestPermissionToSendNotifications();
  }

  Future<void> showNotification({
    required String title,
    required String body,
    String? payload,
    Map<String, String>? data,
  }) async {
    await AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: DateTime.now().millisecondsSinceEpoch.remainder(100000),
        channelKey: _channelKey,
        title: title,
        body: body,
        payload: data,
        notificationLayout: NotificationLayout.Default,
      ),
    );
  }

  Future<void> cancelAll() async {
    await AwesomeNotifications().cancelAll();
  }

  Future<void> cancelNotification(int id) async {
    await AwesomeNotifications().cancel(id);
  }

  Future<void> scheduleNotification({
    required String title,
    required String body,
    required DateTime scheduleDate,
    String? payload,
    Map<String, String>? data,
  }) async {
    await AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: DateTime.now().millisecondsSinceEpoch.remainder(100000),
        channelKey: _channelKey,
        title: title,
        body: body,
        payload: data,
        notificationLayout: NotificationLayout.Default,
      ),
      schedule: NotificationCalendar.fromDate(date: scheduleDate),
    );
  }

  Function(String?)? _onNotificationClickCallback;

  void setNotificationClickCallback(Function(String?) onNotificationClick) {
    _onNotificationClickCallback = onNotificationClick;
  }

  // Notification action handlers
  @pragma('vm:entry-point')
  static Future<void> _onActionReceivedMethod(ReceivedAction receivedAction) async {
    // Handle notification click
    final payload = receivedAction.payload?['payload'];
  }

  @pragma('vm:entry-point')
  static Future<void> _onNotificationCreatedMethod(
    ReceivedNotification receivedNotification,
  ) async {
    // Handle notification creation
  }

  @pragma('vm:entry-point')
  static Future<void> _onNotificationDisplayedMethod(
    ReceivedNotification receivedNotification,
  ) async {
    // Handle notification display
  }

  @pragma('vm:entry-point')
  static Future<void> _onDismissActionReceivedMethod(
    ReceivedAction receivedAction,
  ) async {
    // Handle notification dismissal
  }
}
