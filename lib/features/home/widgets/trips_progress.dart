import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TripsProgress extends StatelessWidget {
  const TripsProgress({
    super.key,
    required this.progress,
  });

  final String progress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: 72,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xff202329),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Trips progress',
                  style: GoogleFonts.dmSans(
                    fontSize: 14,
                    color: const Color(0xffD0D0D0),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '$progress%',
                      style: GoogleFonts.dmSans(
                        fontSize: 14,
                        color: const Color(0xffD0D0D0),
                      ),
                    ),
                    2.widthBox,
                    Image.asset('assets/images/Amount.png'),
                    2.widthBox,
                    Text(
                      '100%',
                      style: GoogleFonts.dmSans(
                          fontSize: 12,
                          color: const Color(0xffFCFCFC).withOpacity(0.46)),
                    ),
                  ],
                )
              ],
            ),
            10.heightBox,
            Stack(
              children: [
                Container(
                  height: 12,
                  width: context.width - 132,
                  decoration: BoxDecoration(
                    color: const Color(0xff2551EB),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Container(
                  height: 12,
                  width: context.width - 32,
                  decoration: BoxDecoration(
                    color: const Color(0xffFCFCFC).withOpacity(0.08),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
