import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';

final databaseReference = FirebaseFirestore.instance;
FirebaseAuth auth = FirebaseAuth.instance;


final myController = TextEditingController();

final picker = ImagePicker();

