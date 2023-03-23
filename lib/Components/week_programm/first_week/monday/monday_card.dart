
import 'package:flutter/material.dart';

import 'Monday_activity.dart';


class MondayCard extends StatelessWidget{
  const MondayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children:  const <Widget>[
              ListTile(
                title: Text("Lundi "),
                subtitle: Text("c'est parti"),
              ),


            ],
          ),

        ),
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> const MondayActivity())
          );
        },
      ),
    );
  }
}