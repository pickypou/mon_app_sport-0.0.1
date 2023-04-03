import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../pages/account/account_page.dart';

String? userID;

class GetUserId extends StatefulWidget {
  const GetUserId({Key? key}) : super(key: key);

  @override
  _GetUserIdState createState() => _GetUserIdState();
}

class _GetUserIdState extends State<GetUserId> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String? userID;

  @override
  void initState() {
    super.initState();
    _checkCurrentUser();
  }

  Future<void> _checkCurrentUser() async {
    User? user = _auth.currentUser;
    if (user != null) {
      userID = user.uid;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const AccountPage()),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Container(); // Retourne un widget quelconque ici, car on n'a pas besoin d'afficher quoi que ce soit pour cette classe.
  }
}
