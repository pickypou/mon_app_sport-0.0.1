import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/login_page.dart';




class TextButtonLogin extends StatelessWidget {
  const TextButtonLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
          );
        }

        , child: Text('Déjà un  compte ?, connectez-vous',
      style: GoogleFonts.comfortaa(
          color: Colors.black,
          fontWeight: FontWeight.bold
      ),)

    );
  }
}