import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BackButtons extends StatelessWidget {
  const BackButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: const EdgeInsets.fromLTRB(130, 20, 130, 20),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
          ),
          child: Text(
            "Retour".toUpperCase(),
            style: GoogleFonts.comfortaa(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
    );
  }
}
