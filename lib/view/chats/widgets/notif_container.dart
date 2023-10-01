import 'package:flutter/material.dart';

import '../../../constants/images_path.dart';
import '../../../constants/text.dart';
import '../../../ui/colors.dart';
import '../../../ui/text_style.dart';
import 'app_bar_icons.dart';

class NotifContainer extends StatelessWidget {
  const NotifContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.99,
      height: height * 0.09,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          12,
        ),
        color: ChatsColors.backgraund,
      ),
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            notif,
            scale: 3,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.02,
            ),
            child: Text(
              chat,
              style: HeadlineTextStyle.style500w24.copyWith(
                color: ChatsColors.headLine,
              ),
            ),
          ),
          const Spacer(),
          const AppBarIcons(appbarIcon: pen),
        ],
      ),
    );
  }
}
