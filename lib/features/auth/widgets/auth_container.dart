import 'package:flutter/material.dart';
import 'package:untitled55/ui/colors.dart';

import '../../../constants/text.dart';
import '../../../ui/text_style.dart';

class AuthContainer extends StatelessWidget {
  const AuthContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.95,
      height: height * 0.07,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            8,
          ),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [
              0.7,
              2,
            ],
            colors: [
              Colors.blue.shade700,
              Colors.blue.shade400,
            ],
          )
          // gradient:
          ),
      child: Center(
        child: Text(
          loginIn,
          style: HeadlineTextStyle.style500w14.copyWith(
            color: ProjectColors.white,
          ),
        ),
      ),
    );
  }
}
