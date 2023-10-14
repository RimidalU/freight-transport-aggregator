import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TripStatesMenuItem extends StatelessWidget {
  const TripStatesMenuItem({
    super.key,
    required this.title,
    required this.count,
    required this.isActive,
  });

  final String title;
  final int count;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$title · ${count.toString()}',
      style: GoogleFonts.dmSans(
          fontSize: 14,
          color: isActive
              ? const Color(0xffD0D0D0)
              : const Color(0xffFCFCFC).withOpacity(0.46)),
    );
  }
}
