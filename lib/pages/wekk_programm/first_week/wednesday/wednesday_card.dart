
import 'package:flutter/material.dart';
import 'package:mon_app_sport/pages/wekk_programm/first_week/wednesday/wednesday_activity.dart';



class WednesdayCard extends StatelessWidget{
  const WednesdayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children:  const <Widget>[
              ListTile(
                title: Text("Mercredi "),
                subtitle: Text("c'est parti"),
              ),


            ],
          ),

        ),
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> const wednesdayActivity())
          );
        },
      ),
    );
  }
}