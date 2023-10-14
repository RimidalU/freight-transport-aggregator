import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../features/features.dart';
import '../../../ui/ui.dart';

class NewsTab extends StatelessWidget {
  const NewsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(NewsDetailsScreen.routeName);
        },
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: context.width - 32,
          height: 84,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xffFCFCFC).withOpacity(0.08),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Image.asset('assets/icons/newsmini.png'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        10.widthBox,
                        Text(
                          '20 Jun 2021',
                          style: GoogleFonts.dmSans(
                              fontSize: 10,
                              color: const Color(0xffFCFCFC).withOpacity(0.46)),
                        ),
                        130.widthBox,
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
                      ],
                    ),
                    3.heightBox,
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'UX/UI desigrers be one ofthe best\njob in the world',
                        style:
                            darkTheme(context).primaryTextTheme.headlineMedium,
                        softWrap: true,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
