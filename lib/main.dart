import 'package:flutter/material.dart';
import 'package:studio_app/pages/buy_credit_page.dart';
import 'package:studio_app/pages/calendar_page.dart';
import 'package:studio_app/pages/forget_password_step_1_page.dart';
import 'package:studio_app/pages/forget_password_step_2_page.dart';
import 'package:studio_app/pages/forget_password_step_3_page.dart';
import 'package:studio_app/pages/history_page.dart';
import 'package:studio_app/pages/home_page.dart';
import 'package:studio_app/pages/intro_page.dart';
import 'package:studio_app/pages/login_page.dart';
import 'package:studio_app/pages/register_page.dart';

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
        '/': (context) => IntroPage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/forget-password-1': (context) => ForgetPasswordPage1(),
        '/forget-password-2': (context) => ForgetPasswordPage2(),
        '/forget-password-3': (context) => ForgetPasswordPage3(),
        '/home': (context) => HomePage(),
        '/calendar': (context) => CalendarPage(),
        '/buy': (context) => CreditPage(),
        '/history': (context) => HistoryPage()
      },
    );
  }
}
