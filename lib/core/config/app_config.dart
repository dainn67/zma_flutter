enum Environment { dev, staging, prod }

class AppConfig {
  static const Environment environment = Environment.dev;
  static const String apiBaseUrl = String.fromEnvironment('API_BASE_URL', defaultValue: 'https://dev-api.example.com');
  static const String appName = String.fromEnvironment('APP_NAME', defaultValue: 'App (Dev)');
  static const bool enableLogging = bool.fromEnvironment('ENABLE_LOGGING', defaultValue: true);
  static const String sdkVersion = String.fromEnvironment('SDK_VERSION');
  static const String buildNumber = String.fromEnvironment('BUILD_NUMBER');

  static bool get isDevelopment => const String.fromEnvironment('ENVIRONMENT', defaultValue: 'dev') == 'dev';
  static bool get isStaging => const String.fromEnvironment('ENVIRONMENT', defaultValue: 'dev') == 'staging';
  static bool get isProduction => const String.fromEnvironment('ENVIRONMENT', defaultValue: 'dev') == 'prod';
}
