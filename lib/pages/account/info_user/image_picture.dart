import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:mon_app_sport/theme/theme_colors.dart';

import '../../../screens/get_user_id.dart';

FirebaseStorage storage = FirebaseStorage.instance;
Reference storageRef = storage.ref('Users').child('test.png');

class ImagePicture extends StatefulWidget {
  const ImagePicture({super.key});
  @override
  _imagePictureState createState() => _imagePictureState();
}

class _imagePictureState extends State<ImagePicture> {
  String? userPhotoUrl;
  String? defaultUrl =
      'https://icon-library.com/images/default-profile-icon/default-profile-icon-16.jpg';

  @override
  void initState() {
    super.initState();
    getProfileImage();
  }

  getProfileImage() {
    Reference ref = storage.ref('Users').child('$userID.png');
    ref.getDownloadURL().then((downloadUrl) {
      setState(() {
        userPhotoUrl = downloadUrl.toString();
      });
    }).catchError((e) {
      setState(() {
        print('Un problème est survenu: ${e.error}');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200, decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
        color: kBorder,
        width: 2,
    ),
    ),
      child: CircleAvatar(
        backgroundColor: kBody,
        backgroundImage: userPhotoUrl == null
            ? NetworkImage(defaultUrl!)
            : NetworkImage(userPhotoUrl!),
      ),
    );
  }
}



