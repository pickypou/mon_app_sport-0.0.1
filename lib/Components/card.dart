import 'package:flutter/material.dart';
import 'package:mon_app_sport/theme/theme_colors.dart';

import '../theme/theme_styles.dart';

class ClickableCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function onPressed;

  const ClickableCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(),
      child: Card(
        color: kIcon,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: Text(title, style: titleCard,),
              subtitle: Text(subtitle, style: subTitleCard,),
            )
          ],
        ),
      ),
    );
  }
}
