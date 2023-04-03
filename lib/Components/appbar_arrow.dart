import 'package:flutter/material.dart';

import '../theme/theme_colors.dart';
import '../theme/theme_styles.dart';

class MyAppBarArrow extends StatelessWidget with PreferredSizeWidget {
  final String title;
  

  const MyAppBarArrow({
    Key? key,
    required this.title,
   
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kBody,
      title: Text(title,style: titleAppBar,),
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () { Navigator.pop(context); },
      ),
    );
  }
}
