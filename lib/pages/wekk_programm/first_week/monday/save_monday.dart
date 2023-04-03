import 'package:flutter/material.dart';

import '../../../../Components/card.dart';
import '../../../../function/add_data_to_firebase.dart';

class CardMondaySave extends StatelessWidget {
  const CardMondaySave({super.key});

  @override
  Widget build(BuildContext context) {
    return ClickableCard(
      title: 'Lundi exercice fait ',
      subtitle: 'sauvegarder !',
      onPressed: () {
        addDataToFirebase();
      },
    );
  }
}
