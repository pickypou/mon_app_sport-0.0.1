import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mon_app_sport/Components/week_programm/first_week/monday/save_monday.dart';

import '../../../../Widgets/programm/first_week/monday/monday_activity.dart';
import '../../../../Widgets/programm/first_week/monday/monday_title.dart';
import '../../../chronometre.dart';

class MondayActivity extends StatelessWidget {
  const MondayActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Lundi'),
          ),
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
                  Container(
                    child:  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.fromLTRB(130, 20, 130, 20),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                      child: Text(
                        "Retour".toUpperCase(),
                        style: GoogleFonts.comfortaa(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  )

                ],

              ),
            ),
          )),
    );
  }
}
