import 'package:flutter/material.dart';
import 'package:mon_app_sport/Widgets/title.dart';

class NotFoundPage extends StatelessWidget{
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const TitleWidget(titleText: "Cette page n'existe pas",);
  }
}