import 'package:flutter/material.dart';


import '../Components/text_button_login.dart';
import '../Components/text_button_signup.dart';
import '../Widgets/images.dart';
import '../Widgets/subtitle_home_page.dart';
import '../Widgets/title_home_page.dart';


class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:SingleChildScrollView(
        child:
         Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            titleHomePage,
            const SizedBox(height: 50,),
            subTitleHomePage,
            const SizedBox(height: 50,),
            image,
            const SizedBox(height: 50,),
           const  TextButtonLogin(),
            const SizedBox(height: 15,),
            const TextButtonSignup(),
            const SizedBox(height: 90,),
          ],
        ),
      ),
      ),
    );




  }

}