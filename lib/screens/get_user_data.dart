import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'get_user_id.dart';

class GetUserData extends StatelessWidget {
  final String documentId;
  final String fieldName;
  final String fieldTitle;

  const GetUserData(Key? key, this.documentId, this.fieldName, this.fieldTitle) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CollectionReference<Map<String, dynamic>> users =
    FirebaseFirestore.instance.collection('Users');
    return FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
      future: users.doc(userID as String?).get(),
      builder: (BuildContext context,
          AsyncSnapshot<DocumentSnapshot<Map<String, dynamic>>> snapshot) {
        if (snapshot.hasError) {
          return const ListTile(
              title: Text(
                'Un problème est survenu',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ));
        }
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic>? data = snapshot.data?.data();
          return ListTile(
            title: Text(
              data?[fieldName],
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            subtitle: Text(
              fieldTitle,
              style: const TextStyle(fontSize: 20),
            ),
          );
        }
        return const ListTile(
            title: Text(
              'En cours de chargement',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ));
      },
    );
  }
}
