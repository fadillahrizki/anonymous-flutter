import 'package:anonymous/screens/home.dart';
import 'package:anonymous/screens/login.dart';
import 'package:anonymous/screens/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/register': (context) => const Register(),
        '/login': (context) => const Login(),
      },
    );
  }
}
