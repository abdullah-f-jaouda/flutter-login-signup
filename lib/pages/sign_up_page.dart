import 'package:flutter/material.dart';

import '../widgets/app_button.dart';
import '../widgets/app_text_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('Create account', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
        backgroundColor: const Color(0xFFF7F8FC),
        surfaceTintColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        top: false,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 460),
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(28, 20, 28, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 8),
                  const Text(
                    'Create account',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800, color: Color(0xFF171923)),
                  ),
                  const SizedBox(height: 7),
                  const Text(
                    'Sign up to get started',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, color: Color(0xFF6E7180)),
                  ),
                  const SizedBox(height: 30),
                  const AppTextField(label: 'Full name', icon: Icons.person_outline_rounded),
                  const SizedBox(height: 13),
                  const AppTextField(label: 'Email', icon: Icons.mail_outline_rounded),
                  const SizedBox(height: 13),
                  const AppTextField(label: 'Password', icon: Icons.lock_outline_rounded, isPassword: true),
                  const SizedBox(height: 13),
                  const AppTextField(label: 'Confirm password', icon: Icons.lock_outline_rounded, isPassword: true),
                  const SizedBox(height: 25),
                  const AppButton(text: 'Create account', onPressed: _doNothing),
                  const SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an account? ', style: TextStyle(color: Color(0xFF555866))),
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        style: TextButton.styleFrom(padding: const EdgeInsets.symmetric(horizontal: 4)),
                        child: const Text('Log in', style: TextStyle(fontWeight: FontWeight.w700)),
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
