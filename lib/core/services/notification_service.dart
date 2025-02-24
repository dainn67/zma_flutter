import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'package:flutter/cupertino.dart';
import 'package:stac_test/core/config/app_config.dart';
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

  static const String notificationChannelId = 'default_channel';
  static const String notificationChannelName = 'Default Channel';
  static const String notificationChannelDescription = 'Default notification channel';

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

        await _prefsService.setShowNotificationPermission();
        systemEnabled = permission;

        await _prefsService.setNotifyEnabled(true);
      }

      return permission;
    } else if (Platform.isIOS) {
      var granted = await _notificationsPlugin
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
  }) async {
    final localTime = tz.TZDateTime.from(DateTime.now(), tz.local);

    _notificationsPlugin.zonedSchedule(id, AppConfig.appName, body, localTime, await getChannel(''),
        uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
        androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
        matchDateTimeComponents: DateTimeComponents.dateAndTime,
        payload: '');
  }

  Future<NotificationDetails> getChannel(String image, [String? categoryIdentifier]) async {
    AndroidNotificationDetails androidChannelDetail = const AndroidNotificationDetails(
      'id1',
      'id2',
      channelDescription: 'default',
    );
    DarwinNotificationDetails iosChannelDetail = DarwinNotificationDetails(
      interruptionLevel: InterruptionLevel.active,
      categoryIdentifier: categoryIdentifier,
      attachments: image.isEmpty
          ? []
          : [
              DarwinNotificationAttachment(
                await moveImageFileToLocal(image),
                thumbnailClippingRect: const DarwinNotificationAttachmentThumbnailClippingRect(
                  x: 0,
                  y: 0,
                  height: 1,
                  width: 1,
                ),
              ),
            ],
    );
    return NotificationDetails(android: androidChannelDetail, iOS: iosChannelDetail);
  }

  Future<String> moveImageFileToLocal(String assetFilePath) async {
    String fileName = assetFilePath.substring(assetFilePath.lastIndexOf("/") + 1);
    final Directory directory = await getApplicationDocumentsDirectory();
    final String filePath = '${directory.path}/$fileName';
    final File file = File(filePath);
    if (await file.exists()) {
      return file.path;
    } else {
      await file.create();
    }

    ByteData data = await rootBundle.load(assetFilePath);
    await file.writeAsBytes(data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes));
    return file.path;
  }

  Future<void> showNotification({
    required String title,
    required String body,
    required int id,
  }) async {
    const androidDetails = AndroidNotificationDetails(
      notificationChannelId,
      notificationChannelName,
      channelDescription: notificationChannelDescription,
      importance: Importance.max,
      priority: Priority.max,
    );

    const iosDetails = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
      interruptionLevel: InterruptionLevel.active,
    );

    const details = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    await _notificationsPlugin.show(id, title, body, details);
  }

  Future<void> cancelNotification(int id) async {
    await _notificationsPlugin.cancel(id);
  }

  Future<void> cancelAllNotifications() async {
    await _notificationsPlugin.cancelAll();
  }

  getApplicationDocumentsDirectory() {}
}
