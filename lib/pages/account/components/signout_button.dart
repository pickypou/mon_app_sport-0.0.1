import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mon_app_sport/Components/button.dart';



FirebaseAuth auth = FirebaseAuth.instance;


Future<void> signOut() async {
  await FirebaseAuth.instance.signOut();
}
class SignoutButton extends StatelessWidget{
  const SignoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MyButton(text: 'Dèconnexion',
      onPressed: signOut,);





  }
}