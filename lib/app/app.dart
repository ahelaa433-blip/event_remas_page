import 'package:flutter/material.dart';
import '../core/routes.dart';
import '../view/login_page.dart';
import '../view/signup.dart';
import '../view/welcome_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Otea',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.green,
        brightness: Brightness.dark,
        fontFamily: 'Arial',
      ),
      initialRoute: Routes.welcome,
      routes: {
        Routes.welcome: (context) => const WelcomePage(),
        Routes.login: (context) => const LoginPage(),
        Routes.signup: (context) => const SignUpPage(),
      },
    );
  }
}
