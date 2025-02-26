import 'package:flutter/material.dart';
import 'package:stac_test/ui/common/main_button.dart';
import 'package:stac_test/ui/screens/auth_screen/widgets/confirm_password_field.dart';
import 'package:stac_test/ui/screens/auth_screen/widgets/email_field.dart';
import 'package:stac_test/ui/screens/auth_screen/widgets/password_field.dart';

class AuthForm extends StatelessWidget {
  final bool isLogin;
  final bool isLoading;
  final bool isPasswordVisible;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final VoidCallback onSubmit;
  final VoidCallback onTogglePasswordVisibility;
  final String? Function(String?) validateEmail;
  final String? Function(String?) validatePassword;
  final String? Function(String?) validateConfirmPassword;
  final AnimationController animationController;

  const AuthForm({
    super.key,
    required this.isLogin,
    required this.isLoading,
    required this.isPasswordVisible,
    required this.emailController,
    required this.passwordController,
    required this.confirmPasswordController,
    required this.onSubmit,
    required this.onTogglePasswordVisibility,
    required this.validateEmail,
    required this.validatePassword,
    required this.validateConfirmPassword,
    required this.animationController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          isLogin ? 'Welcome Back' : 'Create Account',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 32),
        EmailField(
          controller: emailController,
          isLoading: isLoading,
          validator: validateEmail,
        ),
        const SizedBox(height: 16),
        PasswordField(
          controller: passwordController,
          isLoading: isLoading,
          isPasswordVisible: isPasswordVisible,
          onToggleVisibility: onTogglePasswordVisibility,
          validator: validatePassword,
        ),
        const SizedBox(height: 16),
        ConfirmPasswordField(
          controller: confirmPasswordController,
          isLogin: isLogin,
          isLoading: isLoading,
          isPasswordVisible: isPasswordVisible,
          validator: validateConfirmPassword,
          animationController: animationController,
        ),
        const SizedBox(height: 24),
        MainButton(
          title: isLogin ? 'Login' : 'Sign Up',
          textColor: Colors.white,
          isBold: true,
          paddingHorizontal: 16,
          paddingVertical: 16,
          elevation: 3,
          borderRadius: 12,
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: isLoading ? null : onSubmit,
        ),
      ],
    );
  }
}
