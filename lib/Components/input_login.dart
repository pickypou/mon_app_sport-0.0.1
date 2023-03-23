import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../function/login_to_firebase.dart';


class InputLogin extends StatelessWidget {
  const InputLogin({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey.shade300),
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
                  Icons.email_rounded,
                  size: 30,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 60,
                width: 230,
                child: TextField(
                  controller: emailField,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.comfortaa(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: GoogleFonts.comfortaa(color: Colors.black),
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
            border: Border.all(width: 1, color: Colors.grey.shade300),
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
                    color: Colors.grey.shade300),
                child: const Icon(
                  Icons.lock_outline,
                  size: 30,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 60,
                width: 230,
                child: TextField(
                  controller: passwordField,
                  textAlign: TextAlign.center,
                  obscureText: true,
                  style: GoogleFonts.comfortaa(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                      hintText: 'Mot de passe',
                      hintStyle: GoogleFonts.comfortaa(color: Colors.black),
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
