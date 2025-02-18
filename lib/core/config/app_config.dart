import 'current_config.dart';

enum Environment { dev, staging, prod }

class AppConfig {
  static late final Environment environment;
  static late final String apiBaseUrl;
  static late final String appName;
  static late final bool enableLogging;
  static late final String sdkVersion;
  static late final String buildNumber;

  static void initialize() {
    environment = _getEnvironment(CurrentConfig.environment);
    apiBaseUrl = CurrentConfig.apiUrl;
    appName = CurrentConfig.appName;
    sdkVersion = CurrentConfig.version;
    buildNumber = CurrentConfig.buildNumber;
    enableLogging = environment != Environment.prod;
  }

  static Environment _getEnvironment(String env) {
    switch (env.toLowerCase()) {
      case 'dev':
        return Environment.dev;
      case 'staging':
        return Environment.staging;
      case 'prod':
        return Environment.prod;
      default:
        return Environment.dev;
    }
  }

  static bool get isDevelopment => environment == Environment.dev;
  static bool get isStaging => environment == Environment.staging;
  static bool get isProduction => environment == Environment.prod;
}

// Environment-specific configurations
class DevConfig {
  static const apiBaseUrl = 'https://dev-api.example.com';
  static const appName = 'App (Dev)';
}

class StagingConfig {
  static const apiBaseUrl = 'https://staging-api.example.com';
  static const appName = 'App (Staging)';
}

class ProdConfig {
  static const apiBaseUrl = 'https://api.example.com';
  static const appName = 'App';
} 