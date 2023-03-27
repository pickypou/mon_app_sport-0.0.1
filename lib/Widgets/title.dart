import 'package:flutter/material.dart';

import '../theme/theme_styles.dart';

class TitleWidget extends StatelessWidget {
  final String titleText;

  const TitleWidget({Key? key, required this.titleText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
      child: Center(
        child: Text(titleText.toUpperCase(),
          style: titleStyle
        ),
      ),
    );
  }
}
