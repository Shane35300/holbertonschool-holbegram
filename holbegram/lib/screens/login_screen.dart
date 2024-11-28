import 'package:flutter/material.dart';
import '../widgets/text_field.dart';
import './signup_screen.dart';

class LoginScreen extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const LoginScreen({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _passwordVisible = true;

  @override
  void initState() {
    super.initState();
    // Initialisation si nécessaire
  }

  @override
  void dispose() {
    widget.emailController.dispose(); // Libération de la mémoire
    widget.passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Permet de faire défiler le contenu si nécessaire
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.center, // Centrer horizontalement
            children: [
              // Titre de l'application
              const SizedBox(height: 28),
              const Text(
                'Holbegram',
                style: TextStyle(
                  fontFamily:
                      'Billabong', // Assurez-vous que vous avez ajouté cette police dans les assets
                  fontSize: 50,
                ),
              ),
              const SizedBox(height: 10),
              // Logo
              Image.asset(
                'assets/images/logo.webp', // Assurez-vous que le logo est dans le dossier 'assets/images/'
                width: 80,
                height: 60,
              ),
              const SizedBox(height: 28),

              // Email TextFieldInput
              TextFieldInput(
                controller: widget.emailController,
                isPassword: false,
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 24),

              // Password TextFieldInput
              TextFieldInput(
                controller: widget.passwordController,
                isPassword: !_passwordVisible,
                hintText: 'Password',
                keyboardType: TextInputType.visiblePassword,
                suffixIcon: IconButton(
                  icon: Icon(
                    _passwordVisible ? Icons.visibility : Icons.visibility_off,
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

              // Button Login
              SizedBox(
                height: 48,
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                        const Color.fromARGB(218, 226, 37, 24)),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5), // Coins carrés
                      ),
                    ),
                  ),
                  onPressed: () {
                    // Actions de connexion à implémenter plus tard
                  },
                  child: const Text(
                    'Log in',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Forgot password
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Forgot your login details?'),
                  Text(
                    ' Get help logging in',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Divider
              const Divider(
                thickness: 2,
              ),
              const SizedBox(height: 12),

              // Don't have an account? Sign up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUp(
                                    emailController: TextEditingController(),
                                    usernameController: TextEditingController(),
                                    passwordController: TextEditingController(),
                                    passwordConfirmController:
                                        TextEditingController(),
                                  )));
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(218, 226, 37, 24)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // OR divider
              const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                  Text(' OR '),
                  Flexible(
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // Sign in with Google
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png', // URL de l'image Google
                    width: 40,
                    height: 40,
                  ),
                  const Text(' Sign in with Google'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
