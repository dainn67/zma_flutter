import '../helpers/storage_helper.dart';
import '../constants/storage_keys.dart';

class SharedPrefsService {
  static SharedPrefsService? _instance;
  
  // Private constructor
  SharedPrefsService._();
  
  // Singleton instance getter
  static SharedPrefsService get instance {
    _instance ??= SharedPrefsService._();
    return _instance!;
  }
  
  // Initialize SharedPreferences
  static Future<void> init() async {
    await StorageHelper.init();
  }
  
  // Auth Related Methods
  Future<bool> setAuthToken(String token) async {
    return await StorageHelper.setString(StorageKeys.authToken, token);
  }
  
  String? getAuthToken() {
    return StorageHelper.getString(StorageKeys.authToken);
  }
  
  Future<bool> setRefreshToken(String token) async {
    return await StorageHelper.setString(StorageKeys.refreshToken, token);
  }
  
  String? getRefreshToken() {
    return StorageHelper.getString(StorageKeys.refreshToken);
  }
  
  Future<bool> setUserInfo(Map<String, dynamic> userInfo) async {
    return await StorageHelper.setObject(StorageKeys.userInfo, userInfo);
  }
  
  Map<String, dynamic>? getUserInfo() {
    return StorageHelper.getObject(StorageKeys.userInfo);
  }
  
  Future<bool> setIsLoggedIn(bool value) async {
    return await StorageHelper.setBool(StorageKeys.isLoggedIn, value);
  }
  
  bool isLoggedIn() {
    return StorageHelper.getBool(StorageKeys.isLoggedIn) ?? false;
  }
  
  Future<bool> setLastLoginTime(DateTime time) async {
    return await StorageHelper.setString(StorageKeys.lastLoginTime, time.toIso8601String());
  }
  
  DateTime? getLastLoginTime() {
    final timeStr = StorageHelper.getString(StorageKeys.lastLoginTime);
    if (timeStr == null) return null;
    try {
      return DateTime.parse(timeStr);
    } catch (e) {
      return null;
    }
  }
  
  // App Settings Methods
  Future<bool> setAppTheme(String theme) async {
    return await StorageHelper.setString(StorageKeys.appTheme, theme);
  }
  
  String getAppTheme() {
    return StorageHelper.getString(StorageKeys.appTheme) ?? 'light';
  }
  
  Future<bool> setLanguage(String languageCode) async {
    return await StorageHelper.setString(StorageKeys.language, languageCode);
  }
  
  String getLanguage() {
    return StorageHelper.getString(StorageKeys.language) ?? 'en';
  }
  
  Future<bool> setOnboardingComplete(bool value) async {
    return await StorageHelper.setBool(StorageKeys.onboardingComplete, value);
  }
  
  bool isOnboardingComplete() {
    return StorageHelper.getBool(StorageKeys.onboardingComplete) ?? false;
  }
  
  Future<bool> setAppSettings(Map<String, dynamic> settings) async {
    return await StorageHelper.setObject(StorageKeys.appSettings, settings);
  }
  
  Map<String, dynamic>? getAppSettings() {
    return StorageHelper.getObject(StorageKeys.appSettings);
  }
  
  // Session Management
  Future<bool> setSessionId(String sessionId) async {
    return await StorageHelper.setString(StorageKeys.sessionId, sessionId);
  }

  String? getSessionId() {
    return StorageHelper.getString(StorageKeys.sessionId);
  }

  Future<bool> setDeviceId(String deviceId) async {
    return await StorageHelper.setString(StorageKeys.deviceId, deviceId);
  }

  String? getDeviceId() {
    return StorageHelper.getString(StorageKeys.deviceId);
  }

  Future<bool> updateLastActiveTime() async {
    return await StorageHelper.setString(
      StorageKeys.lastActiveTime,
      DateTime.now().toIso8601String()
    );
  }

  DateTime? getLastActiveTime() {
    final timeStr = StorageHelper.getString(StorageKeys.lastActiveTime);
    if (timeStr == null) return null;
    try {
      return DateTime.parse(timeStr);
    } catch (e) {
      return null;
    }
  }
  
  // Auth Session Management
  Future<void> saveAuthInfo({
    required String authToken,
    required String refreshToken,
    required Map<String, dynamic> userInfo,
    DateTime? loginTime,
  }) async {
    await Future.wait([
      setAuthToken(authToken),
      setRefreshToken(refreshToken),
      setUserInfo(userInfo),
      setIsLoggedIn(true),
      setLastLoginTime(loginTime ?? DateTime.now()),
    ]);
  }
  
  Future<void> clearAuthInfo() async {
    await Future.wait([
      StorageHelper.remove(StorageKeys.authToken),
      StorageHelper.remove(StorageKeys.refreshToken),
      StorageHelper.remove(StorageKeys.userInfo),
      StorageHelper.remove(StorageKeys.isLoggedIn),
      StorageHelper.remove(StorageKeys.lastLoginTime),
    ]);
  }

  // Feature Flags
  Future<bool> setFeatureFlags(Map<String, dynamic> flags) async {
    return await StorageHelper.setObject(StorageKeys.featureFlags, flags);
  }

  Map<String, dynamic>? getFeatureFlags() {
    return StorageHelper.getObject(StorageKeys.featureFlags);
  }

  Future<bool> setExperimentGroup(String group) async {
    return await StorageHelper.setString(StorageKeys.experimentGroup, group);
  }

  String? getExperimentGroup() {
    return StorageHelper.getString(StorageKeys.experimentGroup);
  }
} 