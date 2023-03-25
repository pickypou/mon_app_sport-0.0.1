import 'package:flutter/material.dart';
import 'package:mon_app_sport/pages/account/components/signout_button.dart';
import 'package:mon_app_sport/pages/account/components/text_activity_tracking.dart';
import 'package:mon_app_sport/theme/theme_colors.dart';

import 'info_user/image_picture.dart';
import 'info_user/profile_picture.dart';
import 'components/text_programm_activity.dart';
import 'info_user/user_info.dart';
import 'widgets/account_title.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kBody,
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
