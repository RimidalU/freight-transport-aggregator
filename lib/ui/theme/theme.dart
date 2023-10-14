import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const textColor = Color(0xffD0D0D0);
final titleColor = const Color(0xffFCFCFC).withOpacity(0.46);

ThemeData darkTheme(context) {
  return ThemeData(
    scaffoldBackgroundColor: const Color(0xff121418),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xff202329),
    ),
    primaryTextTheme: TextTheme(
      headlineLarge: GoogleFonts.dmSans(
        color: textColor,
        fontSize: 16,
      ),
      headlineMedium: GoogleFonts.dmSans(
        color: textColor,
        fontSize: 14,
      ),
      headlineSmall: GoogleFonts.dmSans(
        color: textColor,
        fontSize: 12,
      ),
      titleLarge: GoogleFonts.dmSans(
        color: titleColor,
        fontSize: 16,
      ),
      titleMedium: GoogleFonts.dmSans(
        color: titleColor,
        fontSize: 14,
      ),
      titleSmall: GoogleFonts.dmSans(
        color: titleColor,
        fontSize: 12,
      ),
    ),
    textTheme: Theme.of(context).textTheme.apply(
          bodyColor: textColor,
          displayColor: textColor,
        ),
  );
}
