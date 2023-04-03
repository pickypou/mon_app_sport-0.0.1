import 'package:flutter/material.dart';
import 'package:mon_app_sport/Components/appbar.dart';
import 'package:mon_app_sport/theme/theme_colors.dart';



import '../../Widgets/title.dart';
import 'components/input_signup.dart';
import 'components/signup_button.dart';
import '../home/components/text_button_login.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBody,
        appBar: const MyAppBar(title: 'inscription',),
        body: Container(
          child:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                TitleWidget(titleText: "inscription"),
                SizedBox(height: 20,),
                InputSection(),
                SizedBox(height: 50),
                SignupButton(),
                TextButtonLogin(),
              ],
            ),
          )
          ),
    );
  }
}



