import '/constants/images_path.dart' as image;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/text.dart';
import '../../../ui/text_style.dart';

class GroupsContaine extends StatelessWidget {
  const GroupsContaine({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/group_chat');
      },
      child: Container(
        width: width * 0.05,
        height: height * 0.096,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            12,
          ),
          color: Colors.grey.shade900,
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.03,
              ),
              child: Image.asset(image.groups, scale: 4),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    groupsName,
                    style: HeadlineTextStyle.style500w14.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: height * 0.005),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.01),
                        child: SvgPicture.asset(image.check),
                      ),
                      Text(
                        messageName,
                        style: HeadlineTextStyle.style400w14.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
