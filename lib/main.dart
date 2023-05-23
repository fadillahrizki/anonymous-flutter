import 'package:anonymous/providers/auth.dart';
import 'package:anonymous/providers/category.dart';
import 'package:anonymous/providers/product.dart';
import 'package:anonymous/providers/store.dart';
import 'package:anonymous/providers/user.dart';
import 'package:anonymous/screens/home.dart';
import 'package:anonymous/screens/login.dart';
import 'package:anonymous/screens/register.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => AuthProvider()),
    ChangeNotifierProvider(create: (_) => ProductProvider()),
    ChangeNotifierProvider(create: (_) => CategoryProvider()),
    ChangeNotifierProvider(create: (_) => StoreProvider()),
    ChangeNotifierProvider(create: (_) => UserProvider()),
  ], child: const MainApp()));
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
