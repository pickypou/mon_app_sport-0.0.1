import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../function/signup_to_firebase.dart';


class SignupButton extends StatelessWidget{
  const SignupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: const EdgeInsets.fromLTRB(130, 20, 130, 20),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
      ),
      child: Text(
        "inscription".toUpperCase(),
        style: GoogleFonts.comfortaa(
          color: Colors.greenAccent,
          fontSize: 20.0,
        ),
      ),
      onPressed: (){
        signupToFirebase();
      },
    );
  }
}