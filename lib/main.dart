import 'package:flutter/material.dart';
import 'package:studio_app/pages/intro_page.dart';
import 'package:studio_app/pages/login_page.dart';
import 'package:studio_app/pages/register_page.dart';
import 'package:studio_app/pages/reset_password_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Studio App',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const IntroPage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/reset-password': (context) => const ResetPasswordPage(),
      },
    );
  }
}
