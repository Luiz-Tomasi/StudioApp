import 'package:flutter/material.dart';
import 'package:studio_app/pages/buy_credit_page.dart';
import 'package:studio_app/pages/calendar_page.dart';
import 'package:studio_app/pages/history_page.dart';
import 'package:studio_app/pages/intro_page.dart';
import 'package:studio_app/pages/login_page.dart';

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
        '/' : (context) => IntroPage(),
        '/login' : (context) => login_page(),
        '/calendar' : (context) => HomePage(),
        '/buy' : (context) => CreditPage(),
        '/history' : (context) => HistoryPage()
      },
    );
  }
}
