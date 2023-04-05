
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import '../../../theme/theme_colors.dart';



FirebaseStorage storage = FirebaseStorage.instance;

class ImagePicture extends StatefulWidget {
  const ImagePicture({super.key});
  @override
  _ImagePictureState createState() => _ImagePictureState();
}

class _ImagePictureState extends State<ImagePicture> {
  String? userPhotoUrl;
  String? defaultUrl =
      'https://icon-library.com/images/default-profile-icon/default-profile-icon-16.jpg';

  @override
  void initState() {
    super.initState();
    getProfileImage();
  }

  getProfileImage() {
    String? userID = FirebaseAuth.instance.currentUser?.uid;

    Reference ref = storage.ref().child("users/$userID.png");
    ref.getDownloadURL().then((downloadUrl) {
      setState(() {
        userPhotoUrl = downloadUrl.toString();
      });
    }).catchError((e) {
      setState(() {
        print('Un problème est survenu: ${e.toString()}');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 140,
      decoration: BoxDecoration(
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