import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Components/activity_traking.dart';
import '../Widgets/title_activity_tracking.dart';

class TrackingProgressPage extends StatelessWidget {
  const TrackingProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('suivre mon activité'),
          backgroundColor: Colors.greenAccent.shade200,
        ),
        body: Column(
          children: [
            Center(
              child: titleActitvityTracking,
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
