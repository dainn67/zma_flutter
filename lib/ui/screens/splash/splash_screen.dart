import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stac_test/core/config/app_config.dart';
import 'package:stac_test/core/routing/route_config.dart';
import 'package:stac_test/core/services/log_service.dart';
import 'package:stac_test/core/services/initialization_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _initAnimations();
    _initializeApp();
    super.initState();
  }

  Future<void> _initAnimations() async {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOutBack,
    );

    _controller.repeat(reverse: true);
  }

  Future<void> _initializeApp() async {
    try {
      // Start a timer for minimum splash screen duration
      final minLoadingFuture = Future.delayed(const Duration(seconds: 1));

      // Initialize app
      await Future.wait([
        minLoadingFuture,
        InitializationService.initializeApp(),
      ]);

      final isAuthenticated = await InitializationService.checkAuthStatus();

      if (!mounted) return;
      if (isAuthenticated) {
        context.go(RouteConfig.home);
      } else {
        context.go(RouteConfig.login);
      }
    } catch (e) {
      LogService.error('Failed to initialize app: $e');
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              colorScheme.primary.withValues(alpha: .1),
              colorScheme.surface,
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ScaleTransition(
                  scale: _animation,
                  child: FadeTransition(
                    opacity: _animation,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: colorScheme.primaryContainer,
                      ),
                      child: Icon(
                        Icons.flutter_dash,
                        size: 80,
                        color: colorScheme.primary,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                Text(
                  AppConfig.appName,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.primary,
                      ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Welcome Back',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: colorScheme.onSurface.withValues(alpha: .7),
                      ),
                ),
                const SizedBox(height: 48),
                SizedBox(
                  width: 40,
                  height: 40,
                  child: CircularProgressIndicator(
                    strokeWidth: 3,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
