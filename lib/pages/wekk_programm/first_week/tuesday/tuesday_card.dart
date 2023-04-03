
import 'package:flutter/material.dart';

import 'Tuesday_activity.dart';



class TuesdayCard extends StatelessWidget{
  const TuesdayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children:  const <Widget>[
              ListTile(
                title: Text("Mardi "),
                subtitle: Text("c'est parti"),
              ),


            ],
          ),

        ),
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> const TuesdayActivity())
          );
        },
      ),
    );
  }
}