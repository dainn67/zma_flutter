import 'package:get_it/get_it.dart';
import 'package:stac_test/core/config/app_config.dart';
import '../network/api_client.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerLazySingleton<ApiClient>(
    () => ApiClient(baseUrl: AppConfig.apiBaseUrl),
  );
}
