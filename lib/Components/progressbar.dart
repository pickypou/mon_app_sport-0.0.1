import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mon_app_sport/theme/theme_colors.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    final activitiesRef = FirebaseFirestore.instance
        .collection('users')
        .doc(user?.uid)
        .collection('activities');

    return StreamBuilder<QuerySnapshot>(
      stream: activitiesRef.snapshots(),
      builder: (context, snapshot) {
        int completedActivities = 0;
        int totalActivities = 70;

        if (snapshot.hasData) {
          final documents = snapshot.data!.docs;
          completedActivities =
              documents.where((doc) => doc['done']).length;
        }

        final progress = completedActivities / totalActivities;
        final percentage = (progress * 100).toInt();

        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$percentage%',
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: kButton,
                ),
              ),
              SizedBox(
                height: 20.0,
                child: LinearProgressIndicator(
                  value: progress,
                  backgroundColor: kButton.withOpacity(0.2),
                  color: kButton,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
