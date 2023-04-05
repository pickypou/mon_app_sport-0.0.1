import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mon_app_sport/pages/account/account_page.dart';
import 'package:mon_app_sport/theme/theme_colors.dart';
import '../../../theme/theme_styles.dart';

class ProfilePicture extends StatefulWidget {
  const ProfilePicture({Key? key}) : super(key: key);

  @override
  _ProfilePictureState createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  File? _images;
  final picker = ImagePicker();




  void refreshPage(BuildContext context) {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => const AccountPage(),
        transitionDuration: const Duration(seconds: 0),
      ),
    );
  }

  Future<void> getImage() async {
    final XFile? pickedFile =
    await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _images = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }
  Future getCamera() async {
    final XFile? pickedFile =
    await picker.pickImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _images = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }
  Future uploadFile() async {
    String? userID = FirebaseAuth.instance.currentUser?.uid;

    Reference storageRef = storage.ref().child("users/$userID.png");
    UploadTask uploadTask = storageRef.putFile(_images!);
    await uploadTask.whenComplete(() {
      print('Photo de profil mise à jour');
      refreshPage(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBody,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: _images == null
                  ? Center(
                child: Text(
                  'Aucune image sélectionnée',
                  style: text,
                ),
              )
                  : Image.file(_images!),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: kButton,
                padding: const EdgeInsets.fromLTRB(70, 10, 70, 10),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
              ),
              onPressed: _images == null ? null : uploadFile,
              child: Text(
                'envoyer',
                style: GoogleFonts.lora(
                  fontSize: 16,
                  fontWeight: FontWeight.w200,
                  color: kTextButton,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kButton,
        onPressed: getImage,
        tooltip: ('Pick image'),
        child: const Icon(
          Icons.add_a_photo_outlined,
          size: 30,
          color: kBody,
        ),
      ),
    );
  }
}


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