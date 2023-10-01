
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/images_path.dart';
import '../../../constants/text.dart';
import '../../../ui/colors.dart';
import '../../../ui/text_style.dart';

class ChatsSearch extends StatelessWidget {
  const ChatsSearch({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.02),
      child: SizedBox(
        height: height * 0.065,
        width: width * 0.95,
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(search),
            ),
            prefixIconConstraints: BoxConstraints(
              maxHeight: height * 0.5,
            ),
            hintText: hintOfSearch,
            hintStyle: HeadlineTextStyle.style400w14.copyWith(
              color: ChatsColors.appIcon,
            ),
            filled: true,
            fillColor: Colors.grey.shade800,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
