import 'package:flutter/material.dart';



import '../Components/input_signup.dart';
import '../Components/signup_button.dart';
import '../Widgets/title_signup.dart';
import 'home/components/text_button_login.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[
          Colors.green.shade200,
          Colors.greenAccent.shade700,
          Colors.green.shade900
        ]
    ),
    ),
          child:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                titleSignup,
                const SizedBox(height: 20,),
                const  InputSection(),
                const SizedBox(height: 50),
                const SignupButton(),
                const TextButtonLogin(),
              ],
            ),
          )
          ),
    );
  }
}



