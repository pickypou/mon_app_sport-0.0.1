
import 'package:flutter/material.dart';
import 'package:mon_app_sport/Components/card.dart';

import 'advice_position.dart';

class BodyPositionCard extends StatelessWidget{
  const BodyPositionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClickableCard(
      title: 'Conseil sur la position a tenir',
      subtitle: 'Garder la tête...',
      onPressed: () {
       Navigator.push(
           context,
           MaterialPageRoute(builder: (context)=> const  AdvicePosition()));
      },
    );


  }
}