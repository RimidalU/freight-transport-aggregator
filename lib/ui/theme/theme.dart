import 'package:flutter/material.dart';

const textColor = Color(0xffD0D0D0);

ThemeData darkTheme(context) {
  return ThemeData(
    scaffoldBackgroundColor: const Color(0xff121418),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xff202329),
    ),
    textTheme: Theme.of(context).textTheme.apply(
          bodyColor: textColor,
          displayColor: textColor,
        ),
  );
}
