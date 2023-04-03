import 'package:flutter/material.dart';
import 'package:mon_app_sport/Components/appbar.dart';
import 'package:mon_app_sport/theme/theme_colors.dart';
import '../../Widgets/title.dart';
import 'components/login_button.dart';
import 'components/input_login.dart';
import 'components/text_button_signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Connexion',),
      backgroundColor: kBody,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              SizedBox(
                height: 80,
              ),
          TitleWidget(titleText: "connexion"),

              SizedBox(
                height: 20,
              ),
              InputLogin(),
              SizedBox(
                height: 30,
              ),
              LoginButton(),
              SizedBox(height: 50),
              TextButtonSignup()
            ],
          ),
        ),
      ),
    );
  }
}
