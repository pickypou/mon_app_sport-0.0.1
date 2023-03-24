import 'package:flutter/material.dart';

import '../../../theme/theme_styles.dart';
import '../../login/login_page.dart';




class TextButtonLogin extends StatelessWidget {
  const TextButtonLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
          );
        }

        , child: Text('Déjà un  compte ?, connectez-vous',
      style: textButton)

    );
  }
}