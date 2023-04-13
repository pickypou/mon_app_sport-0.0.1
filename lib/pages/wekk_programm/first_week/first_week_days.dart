import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mon_app_sport/Components/appbar_arrow.dart';
import 'package:mon_app_sport/pages/wekk_programm/first_week/thursday/thursday_card.dart';
import 'package:mon_app_sport/pages/wekk_programm/first_week/tuesday/tuesday_card.dart';
import 'package:mon_app_sport/pages/wekk_programm/first_week/wednesday/wednesday_card.dart';

import '../../../Widgets/title.dart';
import '../../../theme/theme_colors.dart';
import 'monday/monday_card.dart';

class FirstWeekDays extends StatelessWidget {
  const FirstWeekDays({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBody,
      appBar: MyAppBarArrow(
        title: 'Ma première semaine',
      ),
      body: Column(
        children: const [
          TitleWidget(titleText: "semaine-1"),
          SizedBox(height: 15),
          MondayCard(),
          TuesdayCard(),
          WednesdayCard(),
          ThursdayCard(),

        ],
      ),
    );
  }
}
