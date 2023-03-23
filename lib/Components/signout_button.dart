import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


FirebaseAuth auth = FirebaseAuth.instance;

class SignoutButton extends StatelessWidget{
  const SignoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: const EdgeInsets.fromLTRB(120, 10, 120, 10),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
      ),
      child: Text(
        "Déconnexion".toUpperCase(),
        style: GoogleFonts.comfortaa(
          color: Colors.blue,
          fontSize: 18.0,
        ),
      ),
      onPressed: () {
       FirebaseAuth.instance.signOut();
      },
    );
  }
}