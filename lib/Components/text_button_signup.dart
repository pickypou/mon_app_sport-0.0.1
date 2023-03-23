import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/account_page.dart';
import '../pages/signup_page.dart';

class TextButtonSignup extends StatelessWidget {
  const TextButtonSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AccountPage()),
          );
        }
        , child: Text('Pas encore de  compte ?, inscrivez-vous',
      style: GoogleFonts.comfortaa(
          color: Colors.black,
          fontWeight: FontWeight.bold
      ),)

    );
  }
}