import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HorizontalButtonSet extends StatelessWidget {
  @override
  const HorizontalButtonSet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
          child: Row(
            children: [
              Text(
                'Overview',
                style: GoogleFonts.dmSans(
                    fontSize: 14, color: const Color(0xffD0D0D0)),
              ),
              16.widthBox,
              Text(
                'Productivity',
                style: GoogleFonts.dmSans(
                    fontSize: 14,
                    color: const Color(0xffD0D0D0).withOpacity(0.46)),
              )
            ],
          ),
        ),
        Row(
          children: [
            Container(
              //2551EB
              width: 12,
              height: 2,
              color: const Color(0xffFCFCFC).withOpacity(0.08),
            ),
            Container(
              //2551EB
              width: 60,
              height: 3,
              color: const Color(0xff2551EB),
            ),
            Container(
              //2551EB
              width: context.width - 72,
              height: 2,
              color: const Color(0xffFCFCFC).withOpacity(0.08),
            ),
          ],
        )
      ],
    );
  }
}
