import 'package:flutter/material.dart';

class ConfirmPasswordField extends StatelessWidget {
  final TextEditingController controller;
  final bool isLogin;
  final bool isLoading;
  final bool isPasswordVisible;
  final String? Function(String?) validator;
  final AnimationController animationController;

  const ConfirmPasswordField({
    super.key,
    required this.controller,
    required this.isLogin,
    required this.isLoading,
    required this.isPasswordVisible,
    required this.validator,
    required this.animationController,
  });

  @override
  Widget build(BuildContext context) {
    final heightAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeInOut,
      ),
    );

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      constraints: BoxConstraints(
        maxHeight: isLogin ? 0 : 80,
        minHeight: isLogin ? 0 : 80,
      ),
      child: FadeTransition(
        opacity: heightAnimation,
        child: SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, -0.3),
            end: Offset.zero,
          ).animate(animationController),
          child: TextFormField(
            controller: controller,
            enabled: !isLogin && !isLoading,
            decoration: InputDecoration(
              labelText: 'Confirm Password',
              prefixIcon: const Icon(Icons.lock_outline),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              filled: true,
              fillColor: Colors.grey.shade50,
            ),
            obscureText: !isPasswordVisible,
            validator: validator,
          ),
        ),
      ),
    );
  }
}
