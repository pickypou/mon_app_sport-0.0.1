import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mon_app_sport/Components/appbararrow.dart';
import 'package:mon_app_sport/Components/week_programm/first_week_card.dart';
import 'package:mon_app_sport/theme/theme_colors.dart';
import '../Components/week_programm/body_position_card.dart';
import '../Widgets/title.dart';

class ProgrammeActivity extends StatelessWidget {
  const ProgrammeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
        backgroundColor: kBody,
        appBar: const MyAppBarArrow(title: 'suivre le programme'),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              const TitleWidget(titleText: "Je démarre le progamme"),
              const BodyPositionCard(),
              const FirstWeek(),


              Container(
                child:  ElevatedButton(
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
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

}