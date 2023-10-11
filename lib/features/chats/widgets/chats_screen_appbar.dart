import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';

import '../../../ui/colors.dart';
import '../../../ui/text_style.dart';
import '../../../ui/ui.dart';

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
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(
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
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            children: [
              IconButtonGrey(
                onTap: () {},
                child: Image.asset('assets/images/Search.png'),
              ),
              8.widthBox,
              IconButtonGrey(
                onTap: () {},
                child: Image.asset('assets/images/NotificationWhite.png'),
              ),
              16.widthBox,
            ],
          ),
        )
      ],
    );
  }
}
