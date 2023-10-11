import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoRow extends StatelessWidget {
  const InfoRow({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          description,
          style: GoogleFonts.dmSans(
            fontSize: 12,
            color: const Color(0xffFCFCFC).withOpacity(0.46),
          ),
        ),
        Text(
          title,
          style: GoogleFonts.dmSans(
            fontSize: 16,
            color: const Color(0xffD0D0D0),
          ),
        )
      ],
    );
  }
}
