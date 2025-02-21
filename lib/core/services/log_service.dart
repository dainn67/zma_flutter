import 'package:flutter/foundation.dart';

class LogService {
  static void info(String message) => debugPrint(message);
  // static void success(String message) => debugPrint('\x1B[32m$message\x1B[0m');
  // static void error(String message) => debugPrint('\x1B[31m$message\x1B[0m');

  static void warning(String message) => debugPrint('Warning: $message');
  static void success(String message) => debugPrint('✅ $message');
  static void error(String message) => debugPrint('❌ $message');
}
