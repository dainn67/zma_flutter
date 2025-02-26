import 'package:stac/stac.dart';
import 'package:stac_test/core/di/service_locator.dart';
import 'package:stac_test/core/services/log_service.dart';
import 'package:stac_test/core/services/notification_service.dart';
import 'package:stac_test/core/services/shared_prefs_service.dart';
import 'package:stac_test/core/stac_parser/parser/actions/log_action_parser.dart';
import 'package:stac_test/core/stac_parser/parser/actions/open_dialog_parser.dart';
import 'package:stac_test/core/stac_parser/parser/actions/route_action_parser.dart';
import 'package:stac_test/core/stac_parser/parser/components/confirm_dialog_parser.dart';
import 'package:stac_test/core/stac_parser/parser/components/main_button_parser.dart';
import 'package:stac_test/core/stac_parser/parser/components/safe_area_parser.dart';

class InitializationService {
  static Future<bool> initializeApp() async {
    try {
      final notificationService = getIt<NotificationService>();

      await Future.wait([
        Stac.initialize(
          parsers: [
            MainStacButtonParser(),
            SafeAreaStacParser(),
            ConfirmStacDialogParser(),
          ],
          actionParsers: [
            LogStacActionParser(),
            OpenDialogParser(),
            RouteActionParser(),
          ],
        ),
        notificationService.initialize(),
        notificationService.requestPermission(),
      ]);

      return true;
    } catch (e) {
      LogService.error('Failed to initialize app: $e');
      return false;
    }
  }

  static Future<bool> checkAuthStatus() async {
    final sharedPrefsService = getIt<SharedPrefsService>();
    try {
      final isAuthenticated = sharedPrefsService.isLoggedIn();
      return isAuthenticated;
    } catch (e) {
      LogService.error('Failed to check auth status: $e');
      return false;
    }
  }
}
