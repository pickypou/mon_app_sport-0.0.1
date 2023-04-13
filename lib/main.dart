import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mon_app_sport/pages/account/account_page.dart';
import 'package:mon_app_sport/pages/activity_traking/tracking_progress_page.dart';
import 'package:mon_app_sport/pages/home/home_page.dart';
import 'package:mon_app_sport/pages/login/login_page.dart';
import 'package:mon_app_sport/pages/programm/components/advice_position.dart';
import 'package:mon_app_sport/pages/programm/programm_page.dart';
import 'package:mon_app_sport/pages/signup/signup_page.dart';
import 'package:mon_app_sport/pages/wekk_programm/first_week/first_week_days.dart';
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
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
        initialRoute: '/HomePage',
        routes: {
          '/HomePage': (context) => const HomePage(),
          '/AccountPage': (context) => const AccountPage(),
          '/LoginPage': (context) => const LoginPage(),
          '/SignupPage': (context) => const SignupPage(),
          '/TrackingProgressPage': (context) => const TrackingProgressPage(),
          '/ProgrammeActivity': (context) => const ProgrammeActivity(),
          '/FirstWeekDays': (context) => const FirstWeekDays(),
          '/AdvicePosition': (context) => const AdvicePosition()
        }



    );
  }
}
