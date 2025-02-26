import 'package:stac_test/core/services/shared_prefs_service.dart';
import 'package:stac_test/core/di/service_locator.dart';

class AuthService {
  final SharedPrefsService _sharedPrefsService = getIt<SharedPrefsService>();

  AuthService();

  /// Clears the authentication token (logout)
  Future<void> logout() async {
    await _sharedPrefsService.setIsLoggedIn(false);
  }

  Future<void> signIn(String email, String password) async {
    // TODO: Implement actual sign in logic
    await Future.delayed(const Duration(seconds: 2)); // Simulated delay
    await _sharedPrefsService.setIsLoggedIn(true);
  }

  Future<void> signUp(String email, String password) async {
    // TODO: Implement actual sign up logic
    await Future.delayed(const Duration(seconds: 2)); // Simulated delay
    await _sharedPrefsService.setIsLoggedIn(true);
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  String? validateConfirmPassword(String? value, String password) {
    if (value == null || value.isEmpty) {
      return 'Please confirm your password';
    }
    if (value != password) {
      return 'Passwords do not match';
    }
    return null;
  }
}
