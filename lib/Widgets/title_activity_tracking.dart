import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

Widget titleActitvityTracking = Container(
  margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
  child: Center(
    child: Text('suivre mon activité'.toUpperCase(),
        style: GoogleFonts.comfortaa(
            fontSize: 25, fontWeight: FontWeight.w900, color: Colors.black) ,
  ),
),
);