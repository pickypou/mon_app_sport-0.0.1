import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mon_app_sport/Components/appbar_arrow.dart';
import 'package:mon_app_sport/pages/wekk_programm/first_week/thursday/thursday_card.dart';
import 'package:mon_app_sport/pages/wekk_programm/first_week/tuesday/tuesday_card.dart';
import 'package:mon_app_sport/pages/wekk_programm/first_week/wednesday/wednesday_card.dart';

import '../../../Widgets/title.dart';
import '../../../theme/theme_colors.dart';
import 'monday/monday_card.dart';

class WeekDays extends StatelessWidget {
  const WeekDays({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBody,
      appBar: const MyAppBarArrow(
        title: 'Ma première semaine',
      ),
      body: Column(
        children: [
          const TitleWidget(titleText: "semaine-1"),
          const SizedBox(height: 15),
          const MondayCard(),
          const TuesdayCard(),
          const WednesdayCard(),
          const ThursdayCard(),
          Container(
            child: ElevatedButton(
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
    );
  }
}
