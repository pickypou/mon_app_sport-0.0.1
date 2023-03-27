import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mon_app_sport/theme/theme_colors.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const MyButton({Key? key, required this.text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor:kButton,
        padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Text(text, style: GoogleFonts.lora(
        fontSize: 20,
        fontWeight: FontWeight.w200,
        color: kTextButton,
      ),),
    );
  }
}
