import 'package:flutter/material.dart';

import '../theme/theme_colors.dart';
import '../theme/theme_styles.dart';

class MyAppBarArrow extends StatelessWidget with PreferredSizeWidget {
  final String title;

  MyAppBarArrow({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final isHomePage = ModalRoute.of(context)?.settings.name == '/home';
    final isAccountPage = ModalRoute.of(context)?.settings.name == '/account';

    return AppBar(
      backgroundColor: kBody,
      title: Text(title, style: titleAppBar),
      centerTitle: true,
      leading: (isHomePage || isAccountPage)
          ? null
          : IconButton(
        icon: const Icon(Icons.arrow_back, color: kButton),
        onPressed: () {
          if (Navigator.of(context).canPop()) {
            Navigator.of(context).pop();
          } else {
            Navigator.of(context, rootNavigator: true).pop();
          }
        },
      ),
    );
  }
}




