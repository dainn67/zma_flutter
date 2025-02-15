class AppConstants {
  // Storage Keys
  static const String tokenKey = 'auth_token';
  static const String userKey = 'user_data';
  static const String screenCacheKey = 'screen_cache';
  
  // Timeouts
  static const int connectionTimeout = 30000; // 30 seconds
  static const int receiveTimeout = 30000; // 30 seconds
  
  // Cache Duration
  static const Duration screenCacheDuration = Duration(minutes: 5);
  static const Duration componentCacheDuration = Duration(minutes: 15);
  
  // SDUI Constants
  static const String defaultScreenId = 'home';
  static const String errorScreenId = 'error';
  static const String loadingScreenId = 'loading';
  
  // Headers
  static const String platformHeader = 'x-platform';
  static const String versionHeader = 'x-app-version';
  static const String deviceIdHeader = 'x-device-id';
  
  // Error Messages
  static const String defaultErrorMessage = 'Something went wrong. Please try again.';
  static const String networkErrorMessage = 'Please check your internet connection.';
  static const String sessionExpiredMessage = 'Your session has expired. Please login again.';
  static const String screenNotFoundMessage = 'Screen not found.';
} 