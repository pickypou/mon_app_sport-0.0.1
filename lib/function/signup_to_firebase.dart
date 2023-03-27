
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../pages/account/account_page.dart';



FirebaseAuth auth = FirebaseAuth.instance;
FirebaseFirestore firestore = FirebaseFirestore.instance;
final emailSignupField = TextEditingController();
final passwordSignupField = TextEditingController();
final pseudoSignupField = TextEditingController();

void signupToFirebase(BuildContext context) {
  try {
    auth
        .createUserWithEmailAndPassword(
      email: emailSignupField.text.trim(),
      password: passwordSignupField.text.trim(),
    )
        .then((value) => {
      print(value.user?.uid),
      addUser(value.user!.uid, pseudoSignupField.text.trim()),
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const AccountPage(),
        ),
      ),
    });
  } catch (e) {
    print(e.toString());
  }
}
Future<void> addUser(String userID, String pseudo){
  return firestore.collection('user')
      .doc(userID)
      .set({
    'pseudo': pseudo,
  }).then((value) => print('Utilisateur ajouté'))
      .catchError(
          (error) => print("Erreur: $error"),
  );

}
