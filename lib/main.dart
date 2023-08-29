import 'package:flutter/material.dart';
import 'package:kampusku_app/pages/homepage.dart';
import 'package:kampusku_app/pages/kelas_page.dart';
import 'package:kampusku_app/pages/login_page.dart';
import 'package:kampusku_app/pages/splash_page.dart';

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
        '/': (context) => const SplashPages(),
        '/login': (context) => const LoginPage(),
        '/homepage': (context) => const HomePage(),
        '/kelaspage': (context) => const KelasPage(),
      },
    );
  }
}
