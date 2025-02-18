import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class StorageHelper {
  static SharedPreferences? _prefs;

  static bool get isInitialized => _prefs != null;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // String operations
  static Future<bool> setString(String key, String value) async {
    if (!isInitialized) return false;
    return await _prefs!.setString(key, value);
  }

  static String? getString(String key) {
    if (!isInitialized) return null;
    return _prefs!.getString(key);
  }

  // Int operations
  static Future<bool> setInt(String key, int value) async {
    if (!isInitialized) return false;
    return await _prefs!.setInt(key, value);
  }

  static int? getInt(String key) {
    if (!isInitialized) return null;
    return _prefs!.getInt(key);
  }

  // Double operations
  static Future<bool> setDouble(String key, double value) async {
    if (!isInitialized) return false;
    return await _prefs!.setDouble(key, value);
  }

  static double? getDouble(String key) {
    if (!isInitialized) return null;
    return _prefs!.getDouble(key);
  }

  // Bool operations
  static Future<bool> setBool(String key, bool value) async {
    if (!isInitialized) return false;
    return await _prefs!.setBool(key, value);
  }

  static bool? getBool(String key) {
    if (!isInitialized) return null;
    return _prefs!.getBool(key);
  }

  // Object operations
  static Future<bool> setObject(String key, Map<String, dynamic> value) async {
    if (!isInitialized) return false;
    return await _prefs!.setString(key, jsonEncode(value));
  }

  static Map<String, dynamic>? getObject(String key) {
    if (!isInitialized) return null;
    final String? jsonString = _prefs!.getString(key);
    if (jsonString == null) return null;
    try {
      return jsonDecode(jsonString) as Map<String, dynamic>;
    } catch (e) {
      return null;
    }
  }

  // List operations
  static Future<bool> setStringList(String key, List<String> value) async {
    if (!isInitialized) return false;
    return await _prefs!.setStringList(key, value);
  }

  static List<String>? getStringList(String key) {
    if (!isInitialized) return null;
    return _prefs!.getStringList(key);
  }

  // Remove and clear operations
  static Future<bool> remove(String key) async {
    if (!isInitialized) return false;
    return await _prefs!.remove(key);
  }

  static Future<bool> clear() async {
    if (!isInitialized) return false;
    return await _prefs!.clear();
  }

  // Check if key exists
  static bool containsKey(String key) {
    if (!isInitialized) return false;
    return _prefs!.containsKey(key);
  }
}
