import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mon_app_sport/pages/account/info_user/user_info.dart';

import 'get_user_id.dart';

class GetUserData extends StatelessWidget {
  final String fieldName;
  final TextStyle fieldStyle;
  const GetUserData({
    Key? key,
    required this.fieldName,
    required this.fieldStyle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    CollectionReference users = firestore.collection('Users');
    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(userID).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text(
            'Un problème est survenu',
            style: fieldStyle,
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
          snapshot.data!.data() as Map<String, dynamic>;
          return Text(
            data[fieldName],
            style: fieldStyle,
          );
        }
        return Text(
          'En cours de chargement',
          style: fieldStyle,
        );
      },
    );
  }
}
