import 'package:shared_preferences/shared_preferences.dart';
import 'package:stac_test/core/constants/shared_prefs_keys.dart';

class AuthService {
  final SharedPreferences _prefs;

  AuthService(this._prefs);

  /// Checks if the user is currently authenticated
  Future<bool> isAuthenticated() async {
    final token = _prefs.getString(SharedPrefsKeys.userToken);
    return token != null && token.isNotEmpty;
  }

  /// Saves the authentication token
  Future<void> setAuthToken(String token) async {
    await _prefs.setString(SharedPrefsKeys.userToken, token);
  }

  /// Retrieves the current authentication token
  String? getAuthToken() {
    return _prefs.getString(SharedPrefsKeys.userToken);
  }

  /// Clears the authentication token (logout)
  Future<void> logout() async {
    await _prefs.remove(SharedPrefsKeys.userToken);
  }
}
