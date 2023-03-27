import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mon_app_sport/Components/button.dart';

import '../../../function/signup_to_firebase.dart';
import '../../../theme/theme_colors.dart';


class SignupButton extends StatelessWidget{
  const SignupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: kButton,
        padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 20),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
      ),
      child: Text(
        "inscription".toUpperCase(),
        style: GoogleFonts.lora(
          fontSize: 20,
          fontWeight: FontWeight.w200,
          color: kTextButton,
        ),
      ),
      onPressed: () {  signupToFirebase(context);},
    );
  }
}