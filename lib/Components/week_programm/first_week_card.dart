
import 'package:flutter/material.dart';
import 'package:mon_app_sport/Components/week_programm/first_week/first_week_days.dart';


class FirstWeek extends StatelessWidget{
  const FirstWeek({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              ListTile(
                title: Text("Ma première semaine d'entrainement"),
                subtitle: Text("c'est parti"),
              )
            ],
          ),
        ),
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> const WeekDays())
          );
        },
      ),
    );
  }
}