
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../main.dart';
import 'error_firebase.dart';

FirebaseAuth auth = FirebaseAuth.instance;

class InitializeApp extends StatelessWidget {
  const InitializeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const ErrorFirebase();
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return const MyApp();
          }
          return const MyApp();
        });
  }
}
