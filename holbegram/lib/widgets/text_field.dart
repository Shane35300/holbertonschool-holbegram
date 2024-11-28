import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController controller; // Contrôleur du champ de texte
  final bool isPassword; // Indique si le champ est un mot de passe
  final String hintText; // Texte de suggestion
  final Widget? suffixIcon; // Icône à la fin du champ (peut être null)
  final TextInputType keyboardType; // Type de clavier

  const TextFieldInput({
    Key? key,
    required this.controller,
    required this.isPassword,
    required this.hintText,
    this.suffixIcon,
    required this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      cursorColor: const Color.fromARGB(218, 226, 37, 24), // Couleur du curseur
      obscureText: isPassword, // Cache le texte si c'est un mot de passe
      textInputAction:
          TextInputAction.next, // Action de "suivant" sur le clavier
      decoration: InputDecoration(
        hintText: hintText, // Texte de suggestion
        filled: true, // Fond rempli
        fillColor: Colors.grey[200],
        contentPadding: const EdgeInsets.all(8), // Espacement interne
        suffixIcon: suffixIcon, // Icône suffixe
        border: const OutlineInputBorder(
          borderSide: BorderSide.none, // Pas de bordure par défaut
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide.none, // Pas de bordure au focus
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide.none, // Pas de bordure activée
        ),
      ),
    );
  }
}
