import 'package:flutter/material.dart';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mon_app_sport/pages/account_page.dart';

import '../../screens/get_user_id.dart';
import '../../variables/my_variables.dart';

FirebaseStorage storage = FirebaseStorage.instance;
Reference storageRef = storage.ref('Users').child('$userID.png');

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
    return SizedBox(
      height: 200,
      width: 200,
      child: CircleAvatar(
        backgroundColor: Colors.grey,
        backgroundImage: userPhotoUrl == null
            ? NetworkImage(defaultUrl!)
            : NetworkImage(userPhotoUrl!),
      ),
    );
  }
}

class ProfilePicture extends StatefulWidget {
  const ProfilePicture({super.key});
  @override
  _ProfilePictureState createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  File? _images;

  Future uploadFile() async {
    Reference storageRef = storage.ref('Users').child('$userID.png');
    UploadTask uploadTask = storageRef.putFile(_images!);
    await uploadTask.whenComplete(() {
      print('Photo mise à jour');
      refreshPage(context);
    });
  }
  refreshPage(context){
    Navigator.pushReplacement(context,
        PageRouteBuilder(
            pageBuilder: (_, __, ___)=>const AccountPage(),
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
        print("Pas d'image selectionner.");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(

          children: [
            _images == null
                ? const Text('No image selected')
                : Image.file(_images!),
            ElevatedButton(
              onPressed: uploadFile,
              child: const Text('envoyer'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: ('Pick image'),
        child: const Icon(Icons.add_a_photo),
      ),
    );
  }
}
