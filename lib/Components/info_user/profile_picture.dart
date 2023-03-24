import 'package:flutter/material.dart';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mon_app_sport/pages/account_page.dart';

import '../../screens/get_user_id.dart';
import '../../variables/my_variables.dart';
import 'image_picture.dart';


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
