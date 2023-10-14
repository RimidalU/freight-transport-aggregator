import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ui.dart';

class NavBarWidgetItem extends StatelessWidget {
  const NavBarWidgetItem({
    super.key,
    required this.selectedIndex,
    required this.title,
    required this.imageUrl,
    required this.index,
    required this.onTap,
  });

  final String title;
  final String imageUrl;
  final VoidCallback onTap;
  final int selectedIndex;

  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image.asset(imageUrl),
              Text(
                title,
                style: GoogleFonts.dmSans(
                    fontSize: 12,
                    color: selectedIndex == index
                        ? const Color(0xFFD0D0D0)
                        : const Color(0xffFCFCFC).withOpacity(0.46)),
              ),
            ],
          ),
          if (selectedIndex == index) const SelectedLine(),
        ],
      ),
    );
  }
}
