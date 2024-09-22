import 'package:flutter/material.dart';
import 'package:my_app/pages/intro_page.dart';
import 'package:my_app/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => IntroPage(),
        '/login' : (context) => login_page(),
      },
    );
  }
}
