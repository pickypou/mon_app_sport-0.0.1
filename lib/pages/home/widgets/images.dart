import 'package:flutter/material.dart';

Widget image = Container(
  height: 250,
  width: 250,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2),
        spreadRadius: 1,
        blurRadius: 5,
        offset: const Offset(0, 3),
      ),
    ],


),
  child: Image.asset('images/planche.jpg'),
);
