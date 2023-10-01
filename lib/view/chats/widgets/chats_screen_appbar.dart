
import 'package:flutter/material.dart';

import '../../../constants/images_path.dart';
import '../../../ui/colors.dart';
import '../../../ui/text_style.dart';
import 'app_bar_icons.dart';

class ChatsScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatsScreenAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(12),
        ),
      ),
      leading:  GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back_ios_new,
          color: ProjectColors.headLine,
          size: 16,
        ),
      ),
      backgroundColor: ProjectColors.backgraund,
      title: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Text(
          'Back',
          style: HeadlineTextStyle.style400w14.copyWith(
            color: ProjectColors.headLine,
          ),
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppBarIcons(
                appbarIcon: search,
              ),
              AppBarIcons(
                appbarIcon: notifIcon,
              )
            ],
          ),
        )
      ],
    );
  }
}
