import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mon_app_sport/theme/theme_styles.dart';
import '../../programm/programm_page.dart';


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
          style: textButton,),

    );
  }
}