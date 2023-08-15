import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project_based_yt_mahdi/utils/text/app_text.dart';

import '../utils/color/app_color.dart';

class Toolbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>?
      actions; //dikasi tanda tanya karena ini parameter nya bisa kosong
  const Toolbar({super.key, required this.title, this.actions});
  //ini gadikasi required karena actions

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: actions,
      centerTitle: false,
      title: Text(
        title,
        style: AppText.header1,
      ),
      backgroundColor: AppColor.background,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(54);
}
