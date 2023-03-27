import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mon_app_sport/Components/appbar.dart';
import 'package:mon_app_sport/Components/appbararrow.dart';
import 'package:mon_app_sport/theme/theme_colors.dart';

import 'components/activity_traking.dart';
import '../../Widgets/title.dart';

class TrackingProgressPage extends StatelessWidget {
  const TrackingProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kBody,
        appBar: const MyAppBarArrow(title: 'suivre mon activité',),
        body: Column(
          children: [
            const Center(
              child: TitleWidget(titleText: "suivre mon activité"),
            ),
            const Expanded(
              child: ActivityTracking(),
            ),
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
    );
  }
}
