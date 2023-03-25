import 'package:flutter/material.dart';

import '../../../theme/theme_styles.dart';
import '../../signup_page.dart';

class TextButtonSignup extends StatelessWidget {
  const TextButtonSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SignupPage()),
          );
        }
        , child: Text('Pas encore de  compte ?, inscrivez-vous',
      style: textButton,
      ),

    );
  }
}