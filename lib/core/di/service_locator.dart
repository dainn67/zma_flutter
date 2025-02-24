import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stac_test/core/config/app_config.dart';
import 'package:stac_test/core/services/notification_service.dart';
import 'package:stac_test/core/services/shared_prefs_service.dart';
import '../network/api_client.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // Register NotificationService
  getIt.registerLazySingleton<NotificationService>(
    () => NotificationService(),
  );

  getIt.registerLazySingleton<ApiClient>(
    () => ApiClient(baseUrl: AppConfig.apiBaseUrl),
  );

  // Register SharedPreferences as a singleton
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(sharedPreferences);

  // Register SharedPrefsService
  getIt.registerSingleton<SharedPrefsService>(
    SharedPrefsService(getIt<SharedPreferences>()),
  );
}
