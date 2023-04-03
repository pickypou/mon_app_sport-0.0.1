import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mon_app_sport/Widgets/programm/first_week/wednesday/wednesday_title.dart';
import 'package:mon_app_sport/pages/wekk_programm/first_week/wednesday/save_wednesday.dart';


import '../../../../Components/chronometre.dart';

class wednesdayActivity extends StatelessWidget {
  const wednesdayActivity({super.key});

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
                  wednesdayTitle,
                  const Chronometer(),
                  const SizedBox(height: 20,),
                  const CardWednesdaySave(),
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
                  ),
                  const SizedBox(height: 200,),

                ],

              ),
            ),
          )),
    );
  }
}
