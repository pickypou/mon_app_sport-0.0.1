import 'package:flutter/material.dart';

import '../theme/theme_colors.dart';
import '../theme/theme_styles.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Function()? onDrawerButtonPressed;

  const MyAppBar({
    Key? key,
    required this.title,
    this.onDrawerButtonPressed,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kBody,
      title: Text(title,style: titleAppBar,),
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: onDrawerButtonPressed,
      ),
    );
  }
}
