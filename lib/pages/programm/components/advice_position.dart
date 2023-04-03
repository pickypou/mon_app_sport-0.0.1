import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mon_app_sport/Components/appbar_arrow.dart';
import 'package:mon_app_sport/theme/theme_colors.dart';
import '../widgets/position_advice.dart';

class AdvicePosition extends StatelessWidget {
  const AdvicePosition({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kBody,
          appBar: const MyAppBarArrow(title: 'position',),
          body: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.fromLTRB(20, 60, 20, 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  programmAdvice,
                  const SizedBox(height: 30),
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
              )
            ),
          ),

    );

  }

}