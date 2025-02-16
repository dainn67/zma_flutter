class StorageKeys {
  // Auth related keys
  static const String authToken = 'auth_token';
  static const String refreshToken = 'refresh_token';
  static const String userInfo = 'user_info';
  static const String isLoggedIn = 'is_logged_in';
  static const String lastLoginTime = 'last_login_time';
  
  // App settings keys
  static const String appTheme = 'app_theme';
  static const String language = 'app_language';
  static const String onboardingComplete = 'onboarding_complete';
  static const String appSettings = 'app_settings';
  
  // Cache keys
  static const String screenCache = 'screen_cache';
  static const String imageCache = 'image_cache';
  static const String apiCache = 'api_cache';
  
  // User preferences keys
  static const String notifications = 'notifications_enabled';
  static const String fontSize = 'font_size';
  static const String soundEnabled = 'sound_enabled';
  static const String biometricsEnabled = 'biometrics_enabled';
  
  // Session keys
  static const String sessionId = 'session_id';
  static const String deviceId = 'device_id';
  static const String lastActiveTime = 'last_active_time';
  
  // Feature flags
  static const String featureFlags = 'feature_flags';
  static const String experimentGroup = 'experiment_group';
} 