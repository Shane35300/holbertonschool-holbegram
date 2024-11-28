import 'package:flutter/material.dart';
import '../widgets/text_field.dart';
import './login_screen.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 28),
                    const Text('Holbegram',
                        style: TextStyle(
                          fontFamily: 'Billabong',
                          fontSize: 50,
                        )),
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
                    const SizedBox(height: 22),
                    TextFieldInput(
                      controller: widget.emailController,
                      isPassword: false,
                      hintText: "Email",
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 18),
                    TextFieldInput(
                      controller: widget.usernameController,
                      isPassword: false,
                      hintText: "Full Name",
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(height: 18),
                    TextFieldInput(
                      controller: widget.passwordController,
                      isPassword: !_passwordVisible,
                      hintText: "Password",
                      keyboardType: TextInputType.visiblePassword,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: const Color.fromARGB(218, 226, 37, 24),
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible =
                                !_passwordVisible; // Toggle la visibilité du mot de passe
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 18),
                    TextFieldInput(
                      controller: widget.passwordController,
                      isPassword: !_passwordVisible,
                      hintText: "Confirm Password",
                      keyboardType: TextInputType.visiblePassword,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: const Color.fromARGB(218, 226, 37, 24),
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible =
                                !_passwordVisible; // Toggle la visibilité du mot de passe
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 28),
                    SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                              const Color.fromARGB(218, 226, 37, 24)),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(5), // Coins carrés
                            ),
                          ),
                        ),
                        onPressed: () {
                          // Actions de connexion à implémenter plus tard
                        },
                        child: const Text(
                          'Sign up',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Divider(
                      thickness: 2,
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Have an account?'),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen(
                                          emailController:
                                              TextEditingController(),
                                          passwordController:
                                              TextEditingController(),
                                        )),
                              );
                            },
                            child: const Text(
                              '   Log in',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(218, 226, 37, 24),
                              ),
                            )),
                      ],
                    ),
                  ],
                ))));
  }
}
