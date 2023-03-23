import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget programmAdvice = Container(
  margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const SizedBox(height: 15),
      Text(
        "La position a tenir pendant l'effort",
        style: GoogleFonts.comfortaa(
            fontSize: 18, color: Colors.black, fontWeight: FontWeight.w800),
      ),
      const SizedBox(height: 15),
      Text(
        '- Gardez la tête/le cou droit,',
        style: GoogleFonts.comfortaa(
            fontSize: 15, color: Colors.black, fontWeight: FontWeight.w200),
      ),
      const SizedBox(height: 15),
      Text(
        "- Garder les hanches alignées avec le torse pour bien absorber l'abdomen,",
        style: GoogleFonts.comfortaa(
            fontSize: 15, color: Colors.black, fontWeight: FontWeight.w200),
      ),
      const SizedBox(height: 15),
      Text(
        "- Inspirez vers le bas expirez vers le haut.",
        style: GoogleFonts.comfortaa(
            fontSize: 15, color: Colors.black, fontWeight: FontWeight.w200),
      ),
      const SizedBox(height: 15),
      Text(
        "- Pompes améliorées : ",
        style: GoogleFonts.comfortaa(
            fontSize: 15, color: Colors.black, fontWeight: FontWeight.w400),
      ),
      const SizedBox(height: 15),
      Text(
        "- position genoux (débutant",
        style: GoogleFonts.comfortaa(
            fontSize: 15, color: Colors.black, fontWeight: FontWeight.w200),
      ),
      const SizedBox(height: 15),
      Text(
        " position normale (intermédiaire)",
        style: GoogleFonts.comfortaa(
            fontSize: 15, color: Colors.black, fontWeight: FontWeight.w200),
      ),
      const SizedBox(height: 15),
      Text(
        " position haute (avancé)",
        style: GoogleFonts.comfortaa(
            fontSize: 15, color: Colors.black, fontWeight: FontWeight.w200),
      ),
      const SizedBox(height: 15),
      Text(
        "Les couleur d'activités",
        style: GoogleFonts.comfortaa(
            fontSize: 20, color: Colors.black, fontWeight: FontWeight.w800),
      ),
      const SizedBox(
        height: 15,
      ),
      const SizedBox(height: 15),
      Text(
        "Tricesp",
        style: GoogleFonts.comfortaa(
            fontSize: 20, color: Colors.green, fontWeight: FontWeight.w800),
      ),
      const SizedBox(height: 15),
      Text(
        "Epaule",
        style: GoogleFonts.comfortaa(
            fontSize: 20, color: Colors.red, fontWeight: FontWeight.w800),
      ),
      const SizedBox(height: 15),
      Text(
        "Dos",
        style: GoogleFonts.comfortaa(
            fontSize: 20, color: Colors.yellow, fontWeight: FontWeight.w800),
      ),
      const SizedBox(height: 15),
      Text(
         "Elastique",
       style: GoogleFonts.comfortaa(
            fontSize: 20, color: Colors.blue, fontWeight: FontWeight.w800),
      ),
      const SizedBox(height: 15,),
      Text('Faire une pause de 30 secondes entre chaque exercices',
        style: GoogleFonts.comfortaa(
            fontSize: 15, color: Colors.black, fontWeight: FontWeight.w200),)


    ],
  ),
);
