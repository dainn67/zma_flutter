import 'package:shared_preferences/shared_preferences.dart';

import '../constants/storage_keys.dart';

class SharedPrefsService {
  final SharedPreferences _prefs;

  SharedPrefsService(this._prefs);

  // Helper functions
  Future<bool> setString(String key, String value) async {
    return await _prefs.setString(key, value);
  }

  String? getString(String key) {
    return _prefs.getString(key);
  }

  Future<bool> setBool(String key, bool value) async {
    return await _prefs.setBool(key, value);
  }

  bool? getBool(String key) {
    return _prefs.getBool(key);
  }

  Future<bool> setInt(String key, int value) async {
    return await _prefs.setInt(key, value);
  }

  int? getInt(String key) {
    return _prefs.getInt(key);
  }

  Future<bool> remove(String key) async {
    return await _prefs.remove(key);
  }

  Future<bool> clear() async {
    return await _prefs.clear();
  }

  // Auth Related Methods
  Future<bool> setAuthToken(String token) async {
    return await setString(StorageKeys.authToken, token);
  }

  String? getAuthToken() {
    return getString(StorageKeys.authToken);
  }

  Future<bool> setRefreshToken(String token) async {
    return await setString(StorageKeys.refreshToken, token);
  }

  String? getRefreshToken() {
    return getString(StorageKeys.refreshToken);
  }

  Future<bool> setIsLoggedIn(bool value) async {
    return await setBool(StorageKeys.isLoggedIn, value);
  }

  bool isLoggedIn() {
    return getBool(StorageKeys.isLoggedIn) ?? false;
  }

  Future<bool> setLastLoginTime(DateTime time) async {
    return await setString(StorageKeys.lastLoginTime, time.toIso8601String());
  }

  DateTime? getLastLoginTime() {
    final timeStr = getString(StorageKeys.lastLoginTime);
    if (timeStr == null) return null;
    try {
      return DateTime.parse(timeStr);
    } catch (e) {
      return null;
    }
  }

  // App Settings Methods
  Future<bool> setAppTheme(String theme) async {
    return await setString(StorageKeys.appTheme, theme);
  }

  String getAppTheme() {
    return getString(StorageKeys.appTheme) ?? 'light';
  }

  Future<bool> setLanguage(String languageCode) async {
    return await setString(StorageKeys.language, languageCode);
  }

  String getLanguage() {
    return getString(StorageKeys.language) ?? 'en';
  }

  Future<bool> setOnboardingComplete(bool value) async {
    return await setBool(StorageKeys.onboardingComplete, value);
  }

  bool isOnboardingComplete() {
    return getBool(StorageKeys.onboardingComplete) ?? false;
  }

  // Session Management
  Future<bool> setSessionId(String sessionId) async {
    return await setString(StorageKeys.sessionId, sessionId);
  }

  String? getSessionId() {
    return getString(StorageKeys.sessionId);
  }

  Future<bool> setDeviceId(String deviceId) async {
    return await setString(StorageKeys.deviceId, deviceId);
  }

  String? getDeviceId() {
    return getString(StorageKeys.deviceId);
  }

  Future<bool> updateLastActiveTime() async {
    return await setString(StorageKeys.lastActiveTime, DateTime.now().toIso8601String());
  }

  DateTime? getLastActiveTime() {
    final timeStr = getString(StorageKeys.lastActiveTime);
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
      setIsLoggedIn(true),
      setLastLoginTime(loginTime ?? DateTime.now()),
    ]);
  }

  Future<void> clearAuthInfo() async {
    await Future.wait([
      remove(StorageKeys.authToken),
      remove(StorageKeys.refreshToken),
      remove(StorageKeys.userInfo),
      remove(StorageKeys.isLoggedIn),
      remove(StorageKeys.lastLoginTime),
    ]);
  }

  // Notification permission
  Future<bool> setShowNotificationPermission() async {
    return await setBool(StorageKeys.showNotificationPermission, true);
  }

  bool getShowNotificationPermission() {
    return getBool(StorageKeys.showNotificationPermission) ?? false;
  }

  Future<bool> setNotifyEnabled(bool value) async {
    return await setBool(StorageKeys.notifyEnabled, value);
  }

  bool getNotifyEnabled() {
    return getBool(StorageKeys.notifyEnabled) ?? false;
  }
}
