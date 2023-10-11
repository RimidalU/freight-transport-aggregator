import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide:
                BorderSide(color: const Color(0x00fcfcfc).withOpacity(0.08)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: const Color(0x00fcfcfc).withOpacity(0.08)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: const Color(0x00fcfcfc).withOpacity(0.08)),
          ),
          prefixIcon: const Icon(Icons.search),
          hintText: 'Search',
          hintStyle: GoogleFonts.dmSans(
            color: const Color(0xffFCFCFC).withOpacity(0.46),
          )),
    );
  }
}
