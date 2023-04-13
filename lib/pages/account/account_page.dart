import 'package:flutter/material.dart';
import 'package:mon_app_sport/pages/account/components/signout_button.dart';
import 'package:mon_app_sport/pages/account/components/text_activity_tracking.dart';
import 'package:mon_app_sport/theme/theme_colors.dart';
import '../../Components/appbar_arrow.dart';
import '../../screens/firestore_service.dart';
import 'info_user/MyUserInfo.dart';
import 'info_user/image_profile.dart';
import 'info_user/profile_picture.dart';
import 'components/text_programm_activity.dart';
import 'widgets/account_title.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});



  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  String userId = ""; // initialiser l'id de l'utilisateur
  bool hasProfilePicture = false; // initialiser hasProfilePicture à false

  // Fonction qui vérifie si l'utilisateur a choisi son image de profil ou non
  Future<void> checkProfilePicture() async {
    // Récupérer l'image de profil de l'utilisateur à partir de Firestore
    // Ici, nous utilisons une variable imageUrl pour stocker l'URL de l'image de profil de l'utilisateur
    String? imageUrl = await FirestoreService.getProfilePictureUrl(userId);

    // Vérifier si l'utilisateur a choisi son image de profil ou non
    if (imageUrl != null) {
      setState(() {
        hasProfilePicture = true; // mettre hasProfilePicture à true
      });
    }
  }

  @override
  void initState() {
    super.initState();
    // Appeler checkProfilePicture() lorsque la page est chargée pour vérifier si l'utilisateur a choisi son image de profil ou non
    checkProfilePicture();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kBody,
        appBar: MyAppBarArrow(
          title: 'Ma page perso',
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              accountTitle,


              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 140,
                child: MyUserInfo(),
              ),
              const SizedBox(
                height: 140,
                child: ImagePicture(),
              ),
              const SizedBox(
                height: 205,
                child: ProfilePicture(),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 50,
                child: TextProgrammActivity(),
              ),
              const SizedBox(
                height: 50,
                child: TextActivityTracking(),
              ),
              const SignoutButton(),
            ],
          ),
        ),
      ),
    );
  }
}
