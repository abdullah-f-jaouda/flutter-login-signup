import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    required this.label,
    required this.icon,
    this.isPassword = false,
    super.key,
  });

  final String label;
  final IconData icon;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      keyboardType: label == 'Email' ? TextInputType.emailAddress : TextInputType.text,
      textInputAction: isPassword ? TextInputAction.done : TextInputAction.next,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, size: 21),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: const BorderSide(color: Color(0xFFE3E5EC))),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: const BorderSide(color: Color(0xFFE3E5EC))),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: const BorderSide(color: Color(0xFF168FE5), width: 1.6)),
      ),
    );
  }
}
