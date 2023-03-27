import 'package:flutter/material.dart';
import 'package:mon_app_sport/Components/MyTextButton.dart';

import '../../login/login_page.dart';

class TextButtonLogin extends StatelessWidget {
  const TextButtonLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyTextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
        );
      },
      text: 'Déjà un compte ? Connectez-vous',
    );
  }
}
