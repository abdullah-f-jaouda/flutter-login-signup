import 'package:flutter/material.dart';

import 'pages/login_page.dart';

void main() {
  runApp(const LoginSignupApp());
}

class LoginSignupApp extends StatelessWidget {
  const LoginSignupApp({super.key});

  @override
  Widget build(BuildContext context) {
    const brandBlue = Color(0xFF168FE5);
    return MaterialApp(
      title: 'Login & Sign Up',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF7F8FC),
        colorScheme: ColorScheme.fromSeed(seedColor: brandBlue),
        fontFamily: 'Roboto',
      ),
      home: const LoginPage(),
    );
  }
}
