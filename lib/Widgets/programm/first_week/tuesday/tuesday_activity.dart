import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget tuesdayActivity = Container(
  margin: const EdgeInsets.fromLTRB(30, 30, 30, 0),
  child: Card(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                  color: Colors.green,
                  child: const Center(
                    child: Text(
                      '''|   |''',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text("Faire l'exercice trois fois 30 secondes",
                    style: GoogleFonts.comfortaa(
                      fontSize: 12,
                    )),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(13),
                margin: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                color: Colors.red,
                child: const Center(
                  child: Text(
                    '''_  _''',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text("Faire l'exercice deux fois 30 secondes",
                  style: GoogleFonts.comfortaa(
                    fontSize: 12,
                  )),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(10, 10, 0, 10),
          child: Text("Faire 20 abdos deux fois",
              style: GoogleFonts.comfortaa(
                fontSize: 15,
              )),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(10, 10, 0, 10),
          child: Text("Faire 20 flexions deux fois",
              style: GoogleFonts.comfortaa(
                fontSize: 15,
              )),
        ),
      ],
    ),
  ),
);
