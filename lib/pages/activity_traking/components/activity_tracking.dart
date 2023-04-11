import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mon_app_sport/theme/theme_colors.dart';

class ActivityTracking extends StatefulWidget {
  const ActivityTracking({Key? key}) : super(key: key);

  @override
  _ActivityTrackingState createState() => _ActivityTrackingState();
}

class _ActivityTrackingState extends State<ActivityTracking> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  User? user;
  var activityTracking;

  @override
  void initState() {
    super.initState();
    user = auth.currentUser;
    activityTracking = FirebaseFirestore.instance
        .collection('users')
        .doc(user?.uid)
        .collection('activities');
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: activityTracking.snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (BuildContext context, int index) {
              var document = snapshot.data!.docs[index];
              return CheckboxListTile(
                title: Text(document['time']),
                subtitle: Text(document['date']),
                value: document['done'],
                activeColor: kButton,
                onChanged: (newValue) {
                  setState(() {
                    document.reference.update({'done': newValue});
                  });
                },
              );
            },
          );
        }
      },
    );
  }
}
