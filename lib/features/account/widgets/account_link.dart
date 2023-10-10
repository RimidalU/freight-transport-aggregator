import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountLink extends StatelessWidget {
  const AccountLink({
    super.key,
    this.onTap,
    required this.title,
    required this.imageLink,
    required this.action,
  });

  final VoidCallback? onTap;
  final String imageLink;
  final String title;
  final Widget action;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 52,
        width: context.width - 8,
        decoration: BoxDecoration(
            color: const Color(0xff202329),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                16.widthBox,
                Image.asset(imageLink),
                4.widthBox,
                Text(
                  title,
                  style: GoogleFonts.dmSans(
                    color: const Color(0xffFCFCFC),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            action
          ],
        ),
      ),
    );
  }
}
