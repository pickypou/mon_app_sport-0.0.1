import 'package:flutter/material.dart';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mon_app_sport/pages/account/account_page.dart';
import 'package:mon_app_sport/theme/theme_colors.dart';
import '../../../screens/get_user_id.dart';
import '../../../theme/theme_styles.dart';
import '../../../variables/my_variables.dart';

class ProfilePicture extends StatefulWidget {
  const ProfilePicture({super.key});
  @override
  _ProfilePictureState createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  File? _images;
  final picker = ImagePicker();

  Future uploadFile() async {
    Reference storageRef = storage.ref('user').child('$userID.png');
    UploadTask uploadTask = storageRef.putFile(_images!);
    await uploadTask.whenComplete(() {
      print('Photo mise à jour');
      refreshPage(context);
    });
  }

  refreshPage(context) {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => const AccountPage(),
        transitionDuration: const Duration(seconds: 0),
      ),
    );
  }

  Future getImage() async {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBody,
      body: Center(
        child: Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _images == null
                  ? Text(
                      'Aucune image sélectionnée',
                      style: text,
                    )
                  : Image.file(_images!),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kButton,
                  padding: const EdgeInsets.fromLTRB(70, 10, 70, 10),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                ),
                onPressed: uploadFile,
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
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kButton,
        onPressed: getImage,
        tooltip: ('Pick image'),
        child: const Icon(
          Icons.add_a_photo_outlined,
          size: 30,
          color: Colors.white60,
        ),
      ),
    );
  }
}

FirebaseStorage storage = FirebaseStorage.instance;
Reference storageRef = storage.ref('user').child('$userID.png');

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
    Reference ref = storage.ref('user').child('$userID.png');
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
