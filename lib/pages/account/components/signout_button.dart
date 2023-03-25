import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../theme/theme_colors.dart';


FirebaseAuth auth = FirebaseAuth.instance;


Future<void> signOut() async {
  await FirebaseAuth.instance.signOut();
}
class SignoutButton extends StatelessWidget{
  const SignoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: kButton,
        padding: const EdgeInsets.fromLTRB(130, 20, 130, 20),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
      ),
      child: Text(
        "Déconnexion".toUpperCase(),
        style: GoogleFonts.lora(
          fontSize: 19,
          fontWeight: FontWeight.w200,
          color: kTextButton,
        ),
      ),
      onPressed: () {
        signOut();
      },
    );
  }
}