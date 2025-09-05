import 'package:create_account/view/signup.dart';
import 'package:flutter/material.dart';
import 'view/welcome_page.dart';
import 'view/login_page.dart';
import 'core/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.welcome,
      routes: {
        Routes.welcome: (context) => const WelcomePage(),
        Routes.login: (context) => const LoginPage(),
        Routes.signup: (context) => const SignUpPage(),
      },
    );
  }
}
