import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingInfoButton extends StatelessWidget {
  const RatingInfoButton({
    super.key,
    required this.onTapLink,
    required this.rating,
  });

  final String onTapLink;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(onTapLink);
      },
      child: Container(
        width: 111,
        height: 72,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xff202329),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image.asset('assets/images/rating.png'),
              4.widthBox,
              Column(
                children: [
                  Text(
                    'Rating',
                    style: GoogleFonts.dmSans(
                      fontSize: 12,
                      color: const Color(0xffFCFCFC).withOpacity(0.46),
                    ),
                  ),
                  Text(
                    rating.toStringAsFixed(2),
                    style: GoogleFonts.dmSans(
                      fontSize: 16,
                      color: const Color(0xffD0D0D0),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
