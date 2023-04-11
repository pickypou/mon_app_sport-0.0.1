import 'package:firebase_auth/firebase_auth.dart';
import 'package:mon_app_sport/variables/my_variables.dart';

void saveTrackingDay(String itemID, bool itemDone) {
  var user = FirebaseAuth.instance.currentUser;
  databaseReference.collection('users')
      .doc(user?.uid).collection('activities')
      .doc(itemID).update({"done": itemDone});

}

