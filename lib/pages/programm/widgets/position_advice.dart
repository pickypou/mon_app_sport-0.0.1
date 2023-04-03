import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mon_app_sport/theme/theme_colors.dart';
import 'package:mon_app_sport/theme/theme_styles.dart';

Widget programmAdvice = Container(
  margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const SizedBox(height: 15),
      Text(
        "La position a tenir pendant l'effort",
        style: subTitle
      ),
      const SizedBox(height: 15),
      Text(
        '- Gardez la tête/le cou droit,',
        style: text,
      ),
      const SizedBox(height: 15),
      Text(
        "- Garder les hanches alignées avec le torse pour bien absorber l'abdomen,",
        style: text
      ),
      const SizedBox(height: 15),
      Text(
        "- Inspirez vers le bas expirez vers le haut.",
        style: text
      ),
      const SizedBox(height: 15),
      Text(
        "- Pompes améliorées : ",
        style: text
      ),
      const SizedBox(height: 15),
      Text(
        "- position genoux (débutant",
        style: text
      ),
      const SizedBox(height: 15),
      Text(
        " position normale (intermédiaire)",
        style: text
      ),
      const SizedBox(height: 15),
      Text(
        " position haute (avancé)",
        style: text
      ),
      const SizedBox(height: 15),
      Text(
        "Les couleur d'activités",
        style: subTitle
      ),
      const SizedBox(
        height: 15,
      ),
      const SizedBox(height: 15),
      Text(
        "Tricesp",
        style: textColor, selectionColor: kTriceps,
      ),
      const SizedBox(height: 15),
      Text(
        "Epaule",
        style: textColor, selectionColor: kShoulder,
      ),
      const SizedBox(height: 15),
      Text(
        "Dos",
        style: textColor, selectionColor: kBack,
      ),
      const SizedBox(height: 15),
      Text(
         "Elastique",
       style: textColor, selectionColor: kShoulder,
      ),
      const SizedBox(height: 15,),
      Text('Faire une pause de 30 secondes entre chaque exercices',
        style: textColor, selectionColor: kElastique,
      )


    ],
  ),
);
