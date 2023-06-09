import 'package:flutter/material.dart';
import 'package:mon_app_sport/theme/theme_styles.dart';
import '../../activity_traking/tracking_progress_page.dart';


class TextActivityTracking extends StatelessWidget {
  const TextActivityTracking({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TrackingProgressPage()),
          );
        },
        child: Text('Suivre mon activité',
          style: textButton,)

    );
  }
}