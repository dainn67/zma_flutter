import 'dart:io';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'package:flutter/cupertino.dart';
import 'package:stac_test/core/config/app_config.dart';
import 'package:stac_test/utils/notification_utils.dart';
// ignore: depend_on_referenced_packages
import 'package:timezone/data/latest_all.dart' as tz;
// ignore: depend_on_referenced_packages
import 'package:timezone/timezone.dart' as tz;
import 'package:get_it/get_it.dart';
import '../services/shared_prefs_service.dart';

class NotificationService {
  final FlutterLocalNotificationsPlugin _notificationsPlugin;
  final SharedPrefsService _prefsService;

  NotificationService()
      : _notificationsPlugin = FlutterLocalNotificationsPlugin(),
        _prefsService = GetIt.instance<SharedPrefsService>();

  static const String notificationChannelId = 'notification_channel_id';
  static const String notificationChannelName = 'Notification Channel';
  static const String notificationChannelDescription = 'Notification channel';

  bool initialized = false;

  bool systemEnabled = false;

  Future<bool> init() async {
    try {
      tz.initializeTimeZones();

      if (!initialized) {
        // Initialize the notification plugin
        const initializationSettingsAndroid = AndroidInitializationSettings('@mipmap/ic_launcher');
        const initializationSettingsIOS = DarwinInitializationSettings(
          requestAlertPermission: true,
          requestBadgePermission: true,
          requestSoundPermission: true,
          defaultPresentAlert: true,
          defaultPresentBadge: true,
          defaultPresentSound: true,
        );
        const initializationSettings = InitializationSettings(
          android: initializationSettingsAndroid,
          iOS: initializationSettingsIOS,
        );

        await _notificationsPlugin.initialize(initializationSettings, onDidReceiveNotificationResponse: (details) {}).then((res) {
          // If user already granted permission, return true, otherwise false
          if (res != null) {
            systemEnabled = res;

            // Mark as already initialized
            initialized = true;
          }
        });

        // If initialized, check to request notification permission
        if (initialized) {
          await _requestNotification();
          await _notificationsPlugin.cancelAll();
        }
      }
    } catch (e) {
      debugPrint('Init notification error: $e');
    }
    return initialized;
  }

  Future<bool> _requestNotification() async {
    if (Platform.isAndroid) {
      final androidPlugin = _notificationsPlugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();

      bool permission = false;

      if (!_prefsService.getShowNotificationPermission()) {
        permission = await androidPlugin?.requestNotificationsPermission().onError((a, b) => false).catchError((e) => false) ?? false;
        systemEnabled = permission;

        await _prefsService.setShowNotificationPermission();
        await _prefsService.setNotifyEnabled(true);
      }

      return permission;
    } else if (Platform.isIOS) {
      final granted = await _notificationsPlugin
          .resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
            alert: true,
            badge: true,
            sound: true,
            critical: true,
          )
          .catchError((e) {
        debugPrint('request system permission error: $e');
        return false;
      });
      if (granted != null) {
        systemEnabled = granted;
        await _prefsService.setNotifyEnabled(granted);
      }
      return granted ?? false;
    }
    return false;
  }

  Future<void> scheduleNotification({
    required String title,
    required String body,
    required int id,
    required DateTime dateTime,
  }) async {
    final localTime = tz.TZDateTime.from(dateTime, tz.local);

    _notificationsPlugin.zonedSchedule(id, AppConfig.appName, body, localTime, await NotificationUtils.getChannel(''),
        uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
        androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
        matchDateTimeComponents: DateTimeComponents.dateAndTime,
        payload: '');
  }

  Future<void> showNotification({
    required String title,
    required String body,
    required int id,
  }) async {
    await _notificationsPlugin.show(id, title, body, await NotificationUtils.getChannel(''));
  }

  Future<void> cancelNotification(int id) async {
    await _notificationsPlugin.cancel(id);
  }

  Future<void> cancelAllNotifications() async {
    await _notificationsPlugin.cancelAll();
  }
}
