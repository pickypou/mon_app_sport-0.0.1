import 'package:flutter/material.dart';
import 'package:mon_app_sport/pages/home_page.dart';
import 'package:mon_app_sport/screens/initialize_app.dart';

void main()=> runApp(const InitializeApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HomePage',
      home: Scaffold(
        body: Center(
          child: HomePage(),
        ),
      )

    );
  }
}



