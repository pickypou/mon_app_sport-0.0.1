
import 'package:flutter/material.dart';

import 'advice_position.dart';

class BodyPositionCard extends StatelessWidget{
  const BodyPositionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
       child: Card(
         child: Column(
           mainAxisSize: MainAxisSize.min,
           children: const <Widget>[
             ListTile(
               title: Text('Conseil sur la position a tenir'),
               subtitle: Text('Garder la tête...'),
             )
           ],
         ),
       ),
        onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> const AdvicePosition())
            );
        },
      ),
    );
  }
}