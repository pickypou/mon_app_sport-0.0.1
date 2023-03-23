import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mon_app_sport/function/signup_to_firebase.dart';






class InputSection extends StatelessWidget {
  const InputSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.white30),
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
                    color: Colors.white),
                child: const Icon(
                  Icons.people_outline,
                  size: 30,
                  color: Colors.greenAccent,
                ),
              ),
              SizedBox(
                height: 60,
                width: 230,
                child: TextField(
                  controller: pseudoSignupField,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.comfortaa(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                      hintText: 'Pseudo',
                      hintStyle: GoogleFonts.comfortaa(color: Colors.white),
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
            border: Border.all(width: 1, color: Colors.white30),
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
                    color: Colors.white),
                child: const Icon(
                  Icons.mail_outline,
                  size: 30,
                  color: Colors.greenAccent,
                ),
              ),
              SizedBox(
                height: 60,
                width: 230,
                child: TextField(
                  controller: emailSignupField,
                  textAlign: TextAlign.center,

                  style: GoogleFonts.comfortaa(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                      hintText: 'email',
                      hintStyle: GoogleFonts.comfortaa(color: Colors.white),
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
            border: Border.all(width: 1, color: Colors.white30),
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
                    color: Colors.white),
                child: const Icon(
                  Icons.lock_outline,
                  size: 30,
                  color: Colors.greenAccent,
                ),
              ),
              SizedBox(
                height: 60,
                width: 230,
                child: TextField(
                  controller: passwordSignupField,
                  textAlign: TextAlign.center,
                  obscureText: true,
                  style: GoogleFonts.comfortaa(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                      hintText: 'Mot de passe',
                      hintStyle: GoogleFonts.comfortaa(color: Colors.white),
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