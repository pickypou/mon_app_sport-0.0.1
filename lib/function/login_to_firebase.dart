import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../pages/account/account_page.dart';

FirebaseAuth _auth = FirebaseAuth.instance;

final emailField = TextEditingController();
final passwordField = TextEditingController();

Future<void> loginToFirebase(BuildContext context) async {
  UserCredential userCredential = await _auth.signInWithEmailAndPassword(
    email: emailField.text.trim(),
    password: passwordField.text.trim(),
  );
  User? user = userCredential.user;
  print('Signed in: ${user?.uid}');

  // Rediriger l'utilisateur vers AccountPage après la connexion réussie
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const AccountPage()),
  );
}
