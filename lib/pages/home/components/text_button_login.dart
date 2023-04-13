import 'package:flutter/material.dart';
import 'package:mon_app_sport/Components/MyTextButton.dart';



class TextButtonLogin extends StatelessWidget {
  const TextButtonLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyTextButton(
      onPressed: () {
        Navigator.pushNamed(context, '/LoginPage');

      },
      text: 'Déjà un compte ? Connectez-vous',
    );
  }
}
