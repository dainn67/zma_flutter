import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  final TextEditingController controller;
  final bool isLoading;
  final bool isPasswordVisible;
  final VoidCallback onToggleVisibility;
  final String? Function(String?) validator;

  const PasswordField({
    super.key,
    required this.controller,
    required this.isLoading,
    required this.isPasswordVisible,
    required this.onToggleVisibility,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: 'Password',
        prefixIcon: const Icon(Icons.lock_outline),
        suffixIcon: IconButton(
          icon: Icon(
            isPasswordVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined,
          ),
          onPressed: onToggleVisibility,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        filled: true,
        fillColor: Colors.grey.shade50,
      ),
      obscureText: !isPasswordVisible,
      validator: validator,
      enabled: !isLoading,
    );
  }
}
