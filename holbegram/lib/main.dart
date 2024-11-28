import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/signup_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialisation des contrôleurs ici
    final emailController = TextEditingController();
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();
    final passwordConfirmController = TextEditingController();

    return MaterialApp(
      title: 'Holbegram',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignUp(
        emailController: emailController,
        passwordController: passwordController,
        usernameController: usernameController,
        passwordConfirmController: passwordConfirmController,
      ),
    );
  }
}
