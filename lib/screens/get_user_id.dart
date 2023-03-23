import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../Components/info_user/user_info.dart';
import '../main.dart';
import '../pages/account_page.dart';

String? userID;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  auth.authStateChanges().listen((User? user) {
    if (user == null) {
      print('Utilisateur non connecté');

      runApp(const MyApp());
    } else {
      print('Utilisateur connecté: ${user.email!}');
      userID = user.uid;
      const AccountPage();
    }
  });
}