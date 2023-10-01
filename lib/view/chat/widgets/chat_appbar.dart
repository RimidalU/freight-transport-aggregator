
import 'package:flutter/material.dart';

import '../../../constants/images_path.dart';
import '../../../constants/text.dart';
import '../../../ui/colors.dart';
import '../../../ui/text_style.dart';
import '../../chats/widgets/app_bar_icons.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return AppBar(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(12),
        ),
      ),
      leading: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 4,
            ),
            child: AppBarIcons(
              appbarIcon: iosBack,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.03,
            ),
            child: Image.asset(chatavatar, scale: 4),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: height * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mansName,
                  style: HeadlineTextStyle.style500w14.copyWith(
                    color: Colors.white,
                  ),
                ),
                Text(
                  online,
                  style: HeadlineTextStyle.style400w12.copyWith(
                    color: ChatsColors.laim,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: ChatsColors.backgraund,
      // actions: [
      //   Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 15),
      //     child:
      //   )
      // ],
    );
  }
}
