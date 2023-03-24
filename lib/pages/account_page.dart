import 'package:flutter/material.dart';
import 'package:mon_app_sport/Components/signout_button.dart';
import 'package:mon_app_sport/Components/text_activity_tracking.dart';

import '../Components/info_user/image_picture.dart';
import '../Components/info_user/profile_picture.dart';
import '../Components/text_programm_activity.dart';
import '../Components/info_user/user_info.dart';
import '../Widgets/account_title.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ma page perso'),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              accountTitle,
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 150,
                child: ImagePicture(),
              ),
              const SizedBox(
                height: 80,
                child: ProfilePicture(),
              ),
              const SizedBox(
                height: 20,
              ),

              // const SizedBox(
              // height: 250,
              //child: UserInfo(),
              //),
              const SizedBox(
                height: 50,
                child: TextProgrammActivity(),
              ),
              const SizedBox(
                height: 50,
                child: TextActivityTracking(),
              ),
              const SizedBox(
                height: 90,
                child: SignoutButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
