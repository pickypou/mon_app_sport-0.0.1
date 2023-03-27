import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mon_app_sport/theme/theme_colors.dart';

import '../../../function/login_to_firebase.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

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
        "connexion".toUpperCase(),
        style: GoogleFonts.lora(
          fontSize: 20,
          fontWeight: FontWeight.w200,
          color: kTextButton,
        ),
      ),
      onPressed: () {  loginToFirebase(context);},
    );
  }
}
