import 'package:flutter/material.dart';

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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: Text(title),
              subtitle: Text(subtitle),
            )
          ],
        ),
      ),
    );
  }
}
