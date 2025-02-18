import 'package:get_it/get_it.dart';
import 'package:stac_test/core/config/app_config.dart';
import '../network/api_client.dart';
import '../services/screen_service.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  // Register API client with dummy URL
  getIt.registerLazySingleton<ApiClient>(
    () => ApiClient(baseUrl: AppConfig.apiBaseUrl),
  );

  // Register screen service
  getIt.registerLazySingleton<ScreenService>(
    () => ScreenService(apiClient: getIt<ApiClient>()),
  );
}
