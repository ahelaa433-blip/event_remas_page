import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../core/routes.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 40),
               CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage("assets/images/photo.jpg"),
              ),
              //Todo the image has an error
              const SizedBox(height: 40),
              const Text(
                "Let’s you in",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 40),

              // Facebook
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white10,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                icon: const FaIcon(FontAwesomeIcons.facebook, color: Colors.blue),
                label: const Text("Continue with Facebook", style: TextStyle(color: Colors.white)),
                onPressed: () {},
              ),
              const SizedBox(height: 15),

              // Google
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white10,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                icon: const FaIcon(FontAwesomeIcons.google, color: Colors.red),
                label: const Text("Continue with Google", style: TextStyle(color: Colors.white)),
                onPressed: () {},
              ),
              const SizedBox(height: 15),

              // Apple
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white10,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                icon: const FaIcon(FontAwesomeIcons.apple, color: Colors.white),
                label: const Text("Continue with Apple", style: TextStyle(color: Colors.white)),
                onPressed: () {},
              ),
              const SizedBox(height: 20),

              const Text("or", style: TextStyle(color: Colors.white54)),
              const SizedBox(height: 20),

              // Sign in with password
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, Routes.login);
                },
                child: const Text("Sign in with password"),
              ),
              const SizedBox(height: 20),

              // Sign up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don’t have an account? ", style: TextStyle(color: Colors.white)),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.signup);
                    },
                    child: const Text("Sign up", style: TextStyle(color: Colors.green)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
