import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mon_app_sport/pages/wekk_programm/first_week/monday/save_monday.dart';

import '../../../../Components/appbar_arrow.dart';
import '../../../../Widgets/programm/first_week/monday/monday_activity.dart';
import '../../../../Widgets/programm/first_week/monday/monday_title.dart';
import '../../../../Components/chronometre.dart';

class MondayActivity extends StatelessWidget {
  const MondayActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar:  const MyAppBarArrow(title: 'je suis le programme'),
          body: Container(
            color: Colors.black.withOpacity(0.6),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  mondayTitle,
                  const Chronometer(),
                  mondayActivity,
                  const SizedBox(height: 20,),
                  const CardMondaySave(),
                  const SizedBox(height: 20,),




                ],

              ),
            ),
          )),
    );
  }
}
