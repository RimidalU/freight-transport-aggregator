import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardTab extends StatelessWidget {
  const DashboardTab({
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
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(onTapLink);
          },
          child: Container(
            height: 106,
            width: context.width / 2 - 1.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xff202329)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        imageLink,
                        height: 56,
                      ),
                      Image.asset(
                        'assets/images/Arrow.png',
                        height: 56,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      title,
                      style: GoogleFonts.dmSans(
                        fontSize: 14,
                        color: const Color(0xffD0D0D0),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
