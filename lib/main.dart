import 'package:flutter/material.dart';
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
        '/login': (context) => login_page(),
        '/register': (context) => register_page(),
      },
    );
  }
}
