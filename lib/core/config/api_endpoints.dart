import 'app_config.dart';

class ApiEndpoints {
  // Auth endpoints
  static const String login = '/auth/login';
  static const String register = '/auth/register';
  static const String refreshToken = '/auth/refresh';
  
  // SDUI endpoints
  static const String getScreen = '/ui/screen';
  static const String getComponent = '/ui/component';
  static const String getLayout = '/ui/layout';
  static const String getAction = '/ui/action';
  
  // User endpoints
  static const String userProfile = '/user/profile';
  static const String updateProfile = '/user/profile/update';
  
  // Helper method to build full URLs
  static String buildUrl(String endpoint) {
    final baseUrl = AppConfig.apiBaseUrl;
    return '$baseUrl$endpoint';
  }
  
  // Helper method to build SDUI URLs with parameters
  static String buildScreenUrl(String screenId, {Map<String, dynamic>? params}) {
    final url = buildUrl('$getScreen/$screenId');
    if (params?.isEmpty ?? true) return url;
    
    final queryParams = params!.entries
        .map((e) => '${e.key}=${Uri.encodeComponent(e.value.toString())}')
        .join('&');
    return '$url?$queryParams';
  }
} 