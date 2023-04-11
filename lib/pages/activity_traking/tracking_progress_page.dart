import 'package:flutter/material.dart';
import 'package:mon_app_sport/Components/appbar_arrow.dart';
import 'package:mon_app_sport/theme/theme_colors.dart';

import '../../Components/progressbar.dart';
import 'components/activity_tracking.dart';

class TrackingProgressPage extends StatelessWidget {
  const TrackingProgressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kBody,
        appBar: const MyAppBarArrow(title: 'Suivre mon activité'),
        body: Column(
          children:  const [
            SizedBox(height: 40,),
            ProgressBar(),
            Expanded(
                child:ActivityTracking()
            ),
          ],
        ),
      ),
    );
  }
}
