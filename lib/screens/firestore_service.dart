import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  static final FirebaseFirestore _db = FirebaseFirestore.instance;

  static Future<String?> getProfilePictureUrl(String userId) async {
    DocumentSnapshot snapshot = await _db.collection('users').doc(userId).get();
    return snapshot['profilePictureUrl'];
  }
}