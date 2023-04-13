import 'package:flutter/material.dart';
import 'package:mon_app_sport/pages/programm/components/advice_position.dart';
import '../Components/Not_found_page.dart';
import '../pages/account/account_page.dart';
import '../pages/activity_traking/tracking_progress_page.dart';
import '../pages/home/home_page.dart';
import '../pages/login/login_page.dart';
import '../pages/programm/programm_page.dart';
import '../pages/signup/signup_page.dart';
import '../pages/wekk_programm/first_week/first_week_days.dart';

// liste des noms de pages
List<String> pageNames = [
  'HomePage',
  'AccountPage',
  'LoginPage',
  'SignupPage',
  'TrackingProgressPage',
  'ProgrammeActivity',
  'FirstWeekDays',
  'AdvicePosition'

  // ajouter les autres noms de pages ici
];

// boucle pour créer les routes
final routes = <String, WidgetBuilder>{};
for (final pageName in pageNames) {
routes['/$pageName'] = (BuildContext context) => getPageByName(pageName);
}

// fonction pour obtenir la page en fonction de son nom
Widget getPageByName(String name) {
switch (name) {
case 'HomePage':
return const HomePage();
case 'AccountPage':
return const AccountPage();
case 'LoginPage':
return const LoginPage();
case 'SignupPage':
return const SignupPage();
case 'TrackingProgressPage':
  return const TrackingProgressPage();
  case  'ProgrammeActivity':
return const ProgrammeActivity();
case 'FirstWeekDays':
  return const FirstWeekDays();
  case 'AdvicePosition':
    return const AdvicePosition();
// ajouter les autres pages ici
default:
return const NotFoundPage();
}
}


