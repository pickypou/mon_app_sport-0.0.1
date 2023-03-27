import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mon_app_sport/function/signup_to_firebase.dart';
import 'package:mon_app_sport/theme/theme_styles.dart';

import '../../../theme/theme_colors.dart';






class InputSection extends StatelessWidget {
  const InputSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: kIcon),
            borderRadius: BorderRadius.circular(30),
            color: const Color.fromRGBO(255, 255, 255, 0.1),
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
                  Icons.people_outline,
                  size: 30,
                  color: kIcon,
                ),
              ),
              SizedBox(
                height: 60,
                width: 230,
                child: TextField(
                  controller: pseudoSignupField,
                  textAlign: TextAlign.center,
                  style: textInput,
                  decoration: InputDecoration(
                      hintText: 'Pseudo',
                      hintStyle: textInput,
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
            color: const Color.fromRGBO(255, 255, 255, 0.1),
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
                  Icons.mail_outline,
                  size: 30,
                  color: kIcon,
                ),
              ),
              SizedBox(
                height: 60,
                width: 230,
                child: TextField(
                  controller: emailSignupField,
                  textAlign: TextAlign.center,

                  style: textInput,
                  decoration: InputDecoration(
                      hintText: 'email',
                      hintStyle: textInput,
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
            color: const Color.fromRGBO(255, 255, 255, 0.1),
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
                  controller: passwordSignupField,
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