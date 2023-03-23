import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget mondayTitle = Container(
  margin: const EdgeInsets.all(30),
  child: Text(
    "Lundi".toUpperCase(),
    style: GoogleFonts.comfortaa(fontSize: 30,
        fontWeight: FontWeight.w900,
        color: Colors.white.withOpacity(0.7)),
  ),
);