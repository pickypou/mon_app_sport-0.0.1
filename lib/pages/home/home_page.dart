import 'package:flutter/material.dart';

import 'components/text_button_login.dart';
import 'components/widgets/images.dart';
import 'components/widgets/subtitle_home.dart';
import 'components/widgets/title_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            titleHome,
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
