import 'package:flutter/material.dart';
import '../widgets/text_field.dart';

class SignUp extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final TextEditingController passwordConfirmController;

  const SignUp({
    super.key,
    required this.emailController,
    required this.usernameController,
    required this.passwordController,
    required this.passwordConfirmController,
  });

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _passwordVisible = true;

  @override
  void initState() {
    super.initState();
    // Initialisation si nécessaire
  }

  @override
  void dispose() {
    widget.emailController.dispose(); // Libération de la mémoire
    widget.usernameController.dispose();
    widget.passwordConfirmController.dispose();
    widget.passwordController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 28),
                    const Text('Holbegram',
                        style: TextStyle(
                          fontFamily: 'Billabong',
                          fontSize: 50,
                        )),
                    const SizedBox(height: 10),
                    // Logo
                    Image.asset(
                      'assets/images/logo.webp',
                      width: 80,
                      height: 60,
                    ),
                    const SizedBox(height: 28),
                    const Text(
                      'Sign up to see photos and videos from your friends.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'InstagramSans',
                        fontSize: 20,
                      ),
                    ),
                  ],
                ))));
  }
}
