import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../features/features.dart';
import '../../../ui/ui.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(NewsDetailsScreen.routeName);
        },
        borderRadius: BorderRadius.circular(12),
        child: Container(
          height: 249,
          width: 217,
          decoration: BoxDecoration(
            color: const Color(0xff202329),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Image.asset('assets/icons/news.png'),
                ),
                12.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButtonGrey(
                      onTap: () {},
                      size: 'tag',
                      child: Text(
                        'Tag 1',
                        style: GoogleFonts.dmSans(
                          fontSize: 10,
                          color: const Color(0xffD0D0D0),
                        ),
                      ),
                    ),
                    Text(
                      '20 Jun 2021',
                      style: GoogleFonts.dmSans(
                          fontSize: 10,
                          color: const Color(0xffFCFCFC).withOpacity(0.46)),
                    )
                  ],
                ),
                3.heightBox,
                Text(
                  'USOSA carnival ends amid funfare in Lagos',
                  style: GoogleFonts.dmSans(color: const Color(0xffD0D0D0)),
                ),
                7.heightBox,
                Text(
                  'SDjaposdjapodjapsodjapsodjaspdaspodakopjdpoasdjpoa',
                  style: GoogleFonts.dmSans(
                    color: const Color(0xffFCFCFC).withOpacity(0.46),
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
