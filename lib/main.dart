import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mon_app_sport/pages/home/home_page.dart';
import 'package:mon_app_sport/screens/get_user_id.dart';
import 'package:mon_app_sport/screens/initialize_app.dart';

void main() async {
  // Initialize Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // Run app
  runApp(const InitializeApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(), // Initialise la variable userID
    );
  }
}
