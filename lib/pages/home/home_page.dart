import 'package:flutter/material.dart';
import 'package:mon_app_sport/pages/home/widgets/images.dart';
import 'package:mon_app_sport/pages/home/widgets/subtitle_home.dart';
import 'package:mon_app_sport/theme/theme_colors.dart';

import '../../Components/appbar.dart';
import '../../Widgets/title.dart';
import 'components/text_button_login.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: 'Unipampa Push',
      ),
      backgroundColor: kBody,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TitleWidget(titleText: "Unipampa Push"),

            const SizedBox(
              height: 50,
            ),
            subTitleHome,
            const SizedBox(
              height: 50,
            ),
            image,
            const SizedBox(
              height: 50,
            ),
            const TextButtonLogin(),
          ],
        ),
      ),
    );
  }
}
