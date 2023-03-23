import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../pages/tracking_progress_page.dart';


class TextActivityTracking extends StatelessWidget {
  const TextActivityTracking({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TrackingProgressPage()),
          );
        },
        child: Text('Suivre mon activité',
          style: GoogleFonts.comfortaa(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),)

    );
  }
}