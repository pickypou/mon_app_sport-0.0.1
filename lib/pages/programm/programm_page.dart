import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mon_app_sport/Components/appbar_arrow.dart';
import 'package:mon_app_sport/screens/get_user_id.dart';
import 'package:mon_app_sport/theme/theme_colors.dart';
import '../../Components/progressbar.dart';
import 'components/first_week_card.dart';
import 'components/body_position_card.dart';
import '../../Widgets/title.dart';

class ProgrammeActivity extends StatelessWidget {
  const ProgrammeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBody,
      appBar: const MyAppBarArrow(title: 'je suis le programme'),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(height: 25,),
            TitleWidget(titleText: "Je démarre le progamme"),
            BodyPositionCard(),
            FirstWeek(),
          ],
        ),
      ),
    );
  }
}
