import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../pages/programm_activity.dart';


class TextProgrammActivity extends StatelessWidget {
  const TextProgrammActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProgrammeActivity()),
          );
        },
        child: Text('accéder au progamme ',
          style: GoogleFonts.comfortaa(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),)

    );
  }
}