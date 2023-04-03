import 'package:flutter/material.dart';

import '../../../../Components/card.dart';
import 'Monday_activity.dart';

class MondayCard extends StatelessWidget {
  const MondayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClickableCard(
      title: "Lundi ",
      subtitle: "c'est parti",
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const MondayActivity()));
      },
    );
  }
}
