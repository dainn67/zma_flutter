import 'package:get_it/get_it.dart';
import '../network/api_client.dart';
import '../services/screen_service.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  // Register API client with dummy URL
  getIt.registerLazySingleton<ApiClient>(
    () => ApiClient(baseUrl: 'https://dummy-api.example.com'),
  );

  // Register screen service
  getIt.registerLazySingleton<ScreenService>(
    () => ScreenService(apiClient: getIt<ApiClient>()),
  );
} 