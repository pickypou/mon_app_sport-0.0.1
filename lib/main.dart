import 'package:flutter/material.dart';
import 'package:mon_app_sport/pages/home/components/text_button_login.dart';
import 'package:mon_app_sport/pages/home/components/widgets/images.dart';
import 'package:mon_app_sport/pages/home/components/widgets/subtitle_home.dart';
import 'package:mon_app_sport/pages/home/components/widgets/title_home.dart';
import 'package:mon_app_sport/screens/initialize_app.dart';
import 'package:mon_app_sport/theme/theme_colors.dart';

void main() => runApp(const InitializeApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kBody,
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
      ),
    );
  }
}
