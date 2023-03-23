import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


FirebaseAuth _auth = FirebaseAuth.instance;
final emailField = TextEditingController() ;
final passwordField = TextEditingController();
Future<void> loginToFirebase() async {
  UserCredential userCredential = await _auth.signInWithEmailAndPassword(
    email: emailField.text.trim(),
    password: passwordField.text.trim(),
  );
  User? user = userCredential.user;
  print('Signed in: ${user?.uid}');
}
