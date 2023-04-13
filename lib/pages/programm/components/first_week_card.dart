import 'package:flutter/material.dart';

import '../../../Components/card.dart';

class FirstWeek extends StatelessWidget {
  const FirstWeek({super.key});

  @override
  Widget build(BuildContext context) {
    return ClickableCard(
      title: "Ma première semaine d'entrainement",
      subtitle: "c'est parti",
      onPressed: () {
        Navigator.pushNamed(context,  '/FirstWeekDays');
      },
    );
  }
}
