import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarIcons extends StatelessWidget {
  const AppBarIcons({
    super.key,
    required this.appbarIcon,
  });

  final String appbarIcon;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.01),
      child: Container(
        width: width * 0.1,
        height: height * 0.05,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            12,
          ),
          color: Colors.grey.shade800,
        ),
        child: Center(
          child: SvgPicture.asset(appbarIcon),
        ),
      ),
    );
  }
}
