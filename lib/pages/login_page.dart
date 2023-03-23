import 'package:flutter/material.dart';
import '../Components/login_button.dart';
import '../Components/input_login.dart';
import '../Components/text_button_signup.dart';
import '../Widgets/title_connexion.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'loginPage',
      home: Scaffold(
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
              ),
              titleConnexion,
              const SizedBox(
                height: 20,
              ),
              const InputLogin(),
              const SizedBox(
                height: 30,
              ),
              const LoginButton(),
              const SizedBox(height: 50),
              const TextButtonSignup()
            ],
          ),
        ),
        ),
      ),
    );
  }
}
