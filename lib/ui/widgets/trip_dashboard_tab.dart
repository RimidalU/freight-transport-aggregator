import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ui.dart';

class TripDashboardTab extends StatelessWidget {
  const TripDashboardTab({
    super.key,
    required this.onTapLink,
    required this.title,
    required this.imageLink,
  });

  final String onTapLink;
  final String imageLink;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/testprof.png'),
              ),
              8.widthBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good Morning',
                    style: darkTheme(context).primaryTextTheme.titleMedium,
                  ),
                  Text(
                    'Abdula Azis',
                    style: GoogleFonts.dmSans(
                        fontSize: 18, color: const Color(0xffD0D0D0)),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {
                  Navigator.of(context).pushNamed(onTapLink);
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color(0xffFCFCFC).withOpacity(0.08)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Image.asset('assets/images/Arrow.png'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
