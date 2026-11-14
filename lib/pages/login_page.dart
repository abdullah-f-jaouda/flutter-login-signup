import 'package:flutter/material.dart';

import '../widgets/app_button.dart';
import '../widgets/app_text_field.dart';
import 'sign_up_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 460),
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(28, 32, 28, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 12),
                  const _BrandMark(),
                  const SizedBox(height: 28),
                  const Text(
                    'Welcome back',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800, color: Color(0xFF171923)),
                  ),
                  const SizedBox(height: 7),
                  const Text(
                    'Log in to continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, color: Color(0xFF6E7180)),
                  ),
                  const SizedBox(height: 34),
                  const AppTextField(label: 'Email', icon: Icons.mail_outline_rounded),
                  const SizedBox(height: 14),
                  const AppTextField(label: 'Password', icon: Icons.lock_outline_rounded, isPassword: true),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('Forgot password?', style: TextStyle(fontWeight: FontWeight.w600)),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const AppButton(text: 'Login', onPressed: _doNothing),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account? ", style: TextStyle(color: Color(0xFF555866))),
                      TextButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute<void>(builder: (_) => const SignUpPage()),
                        ),
                        style: TextButton.styleFrom(padding: const EdgeInsets.symmetric(horizontal: 4)),
                        child: const Text('Sign up', style: TextStyle(fontWeight: FontWeight.w700)),
                      ),
                    ],
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

void _doNothing() {}

class _BrandMark extends StatelessWidget {
  const _BrandMark();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(Icons.flutter_dash, size: 70, color: Color(0xFF168FE5)),
    );
  }
}

