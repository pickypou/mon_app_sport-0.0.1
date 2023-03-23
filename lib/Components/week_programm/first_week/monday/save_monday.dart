import 'package:flutter/material.dart';

import '../../../../function/add_data_to_firebase.dart';


class CardMondaySave extends StatelessWidget {
  const CardMondaySave({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Card(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children:   [
              Container(
                padding: const EdgeInsets.all(30),
                    child:  const Text('Lundi exercice fait sauvegarder !'),
              )

            ]),
      ),
      onPressed: () {
        addDataToFirebase();
      },

    );
  }
}
