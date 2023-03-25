import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mon_app_sport/theme/theme_colors.dart';

import '../../../function/login_to_firebase.dart';
import '../../../theme/theme_styles.dart';


class InputLogin extends StatelessWidget {
  const InputLogin({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: kIcon),
            borderRadius: BorderRadius.circular(30),
            color: const Color.fromRGBO(255, 255, 255, 0.3),
          ),
          height: 60,
          child: Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white60),
                child: const Icon(
                  Icons.email_rounded,
                  size: 30,
                  color: kIcon,
                ),
              ),
              SizedBox(
                height: 60,
                width: 230,
                child: TextField(
                  controller: emailField,
                  textAlign: TextAlign.center,
                  style: textInput,
                  decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle:textInput,
                      border: InputBorder.none),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: kIcon),
            borderRadius: BorderRadius.circular(30),
            color: const Color.fromRGBO(255, 255, 255, 0.3),
          ),
          height: 60,
          child: Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white60),
                child: const Icon(
                  Icons.lock_outline,
                  size: 30,
                  color: kIcon,
                ),
              ),
              SizedBox(
                height: 60,
                width: 230,


                child: TextField(
                  controller: passwordField,
                  textAlign: TextAlign.center,
                  obscureText: true,
                  style: textInput,
                    decoration: InputDecoration(
                    hintText: 'Mot de passe',
                    hintStyle: textInput,
                    border: InputBorder.none),
                  ),
                ),

            ],
          ),
        ),
      ],
    );
  }
}
