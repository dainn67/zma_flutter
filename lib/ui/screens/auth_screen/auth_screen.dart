import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stac_test/core/di/service_locator.dart';
import 'package:stac_test/core/routing/route_config.dart';
import 'widgets/auth_form.dart';
import 'package:stac_test/core/services/auth_service.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> with SingleTickerProviderStateMixin {
  bool _isLogin = true;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _isPasswordVisible = false;
  bool _isLoading = false;

  // Add animation controller
  late AnimationController _animationController;

  final _authService = getIt<AuthService>();

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _switchAuthMode() {
    setState(() {
      _isLogin = !_isLogin;
      if (_isLogin) {
        _animationController.reverse();
      } else {
        _animationController.forward();
      }
    });
  }

  String? _validateEmail(String? value) {
    return _authService.validateEmail(value);
  }

  String? _validatePassword(String? value) {
    return _authService.validatePassword(value);
  }

  String? _validateConfirmPassword(String? value) {
    return _authService.validateConfirmPassword(value, _passwordController.text);
  }

  Future<void> _submit() async {
    setState(() => _isLoading = true);

    if (_isLogin) {
      await _authService.signIn(
        _emailController.text,
        _passwordController.text,
      );
    } else {
      await _authService.signUp(
        _emailController.text,
        _passwordController.text,
      );
    }

    setState(() => _isLoading = false);
    if (mounted) context.go(RouteConfig.home);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).primaryColor.withValues(alpha: 0.8),
              Theme.of(context).colorScheme.secondary.withValues(alpha: 0.7),
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: AuthForm(
                        isLogin: _isLogin,
                        isLoading: _isLoading,
                        isPasswordVisible: _isPasswordVisible,
                        emailController: _emailController,
                        passwordController: _passwordController,
                        confirmPasswordController: _confirmPasswordController,
                        onSubmit: _submit,
                        onTogglePasswordVisibility: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                        validateEmail: _validateEmail,
                        validatePassword: _validatePassword,
                        validateConfirmPassword: _validateConfirmPassword,
                        animationController: _animationController,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: _isLoading ? null : _switchAuthMode,
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                    child: Text(
                      _isLogin ? 'Create new account' : 'Already have an account? Login',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
