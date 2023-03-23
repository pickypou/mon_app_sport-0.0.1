
import 'package:flutter/material.dart';
import 'package:mon_app_sport/Components/week_programm/first_week/thursday/thursday_activity.dart';



class ThursdayCard extends StatelessWidget{
  const ThursdayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children:  const <Widget>[
              ListTile(
                title: Text("Jeudi "),
                subtitle: Text("c'est parti"),
              ),


            ],
          ),

        ),
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> const ThursdayActivity())
          );
        },
      ),
    );
  }
}