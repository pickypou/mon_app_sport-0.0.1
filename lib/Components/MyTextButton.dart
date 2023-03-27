import 'package:flutter/material.dart';
import 'package:mon_app_sport/theme/theme_styles.dart';

class MyTextButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const MyTextButton({Key? key, required this.text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,

      child: Text(text, style: textButton),
    );
  }
}
