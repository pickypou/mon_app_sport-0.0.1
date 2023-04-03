import 'package:flutter/material.dart';
import 'package:mon_app_sport/pages/wekk_programm/first_week/first_week_days.dart';

import '../../../Components/card.dart';

class FirstWeek extends StatelessWidget {
  const FirstWeek({super.key});

  @override
  Widget build(BuildContext context) {
    return ClickableCard(
      title: "Ma première semaine d'entrainement",
      subtitle: "c'est parti",
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const WeekDays()));
      },
    );
  }
}
