import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../pages/account/account_page.dart';
import '../pages/login/login_page.dart';

String? userID;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    _checkCurrentUser();
  }

  Future<void> _checkCurrentUser() async {
    User? user = _auth.currentUser;

    if (user != null) {
      // Redirect to account page if user is already signed in
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const AccountPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My App',
      home: LoginPage(),
    );
  }
}
