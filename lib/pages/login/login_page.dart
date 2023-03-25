import 'package:flutter/material.dart';
import 'package:mon_app_sport/theme/theme_colors.dart';
import 'components/login_button.dart';
import 'components/input_login.dart';
import 'components/text_button_signup.dart';
import 'widgets/title_connexion.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBody,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
              ),
              titleConnexion,
              const SizedBox(
                height: 20,
              ),
              const InputLogin(),
              const SizedBox(
                height: 30,
              ),
              const LoginButton(),
              const SizedBox(height: 50),
              const TextButtonSignup()
            ],
          ),
        ),
      ),
    );
  }
}
