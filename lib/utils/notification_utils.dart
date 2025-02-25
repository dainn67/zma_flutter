import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stac_test/core/services/notification_service.dart';

class NotificationUtils {
  NotificationUtils._();

  static Future<NotificationDetails> getChannel(String image, [String? categoryIdentifier]) async {
    AndroidNotificationDetails androidChannelDetail = const AndroidNotificationDetails(
      NotificationService.notificationChannelId,
      NotificationService.notificationChannelName,
      channelDescription: NotificationService.notificationChannelDescription,
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

  static Future<String> moveImageFileToLocal(String assetFilePath) async {
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
}
