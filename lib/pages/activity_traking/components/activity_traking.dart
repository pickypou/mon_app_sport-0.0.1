import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mon_app_sport/function/update_item.dart';
import '../../../variables/my_variables.dart';

class ActivityTracking extends StatelessWidget {
  const ActivityTracking({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: databaseReference.collection('items').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) return const Text('Loading...');
        return ListView(
          children: snapshot.data!.docs.map((document) {
            return CheckboxListTile(
              title: Text(document['time']),
              subtitle: Text(document['date']),

              value: document['done'],
              onChanged: (bool? value) {

                updateItem(document.id, value!);
              },
            );
          }).toList(),
        );
      },
    );
  }
}
