import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../function/signup_to_firebase.dart';
import '../../../screens/get_user_data.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  _UserInfoState createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  final User? currentUser = FirebaseAuth.instance.currentUser;
  String userEmail = 'En cours de chargement';
  String userPseudo = 'En cours de chargement';

  late FirebaseFirestore _firestore;

  @override
  void initState() {
    super.initState();
    _firestore = FirebaseFirestore.instance;
    if (currentUser!.email != null) {
      userEmail = currentUser!.email!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text(
            userPseudo,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          subtitle: const Text(
            'Pseudo',
            style: TextStyle(fontSize: 20),
          ),
        ),
        ListTile(
          title: Text(
            userEmail,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          subtitle: const Text(
            'Adresse email',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _firestore
        .collection('user')
        .doc(currentUser!.uid)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        setState(() {
          userPseudo = documentSnapshot.get('pseudo');
        });
      }
    }).catchError((error) {
      print('Error getting user pseudo: $error');
    });
  }
}
