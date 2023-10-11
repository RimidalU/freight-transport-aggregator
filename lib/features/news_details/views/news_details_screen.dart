import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled55/ui/widgets/AppbarAndNotifications.dart';

import 'widgets/tags_set.dart';

class NewsDetailsScreen extends StatefulWidget {
  const NewsDetailsScreen({
    super.key,
    this.tags,
  });

  static const routeName = '/news-details';

  final List<String>? tags;

  @override
  State<NewsDetailsScreen> createState() => _NewsDetailsScreenState();
}

class _NewsDetailsScreenState extends State<NewsDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121418),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AppBarAndNotifications(),
              3.heightBox,
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xff202329)),
                width: context.width - 8,
                height: context.height + 100,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const TagsSet(
                            tags: [
                              'Tag2',
                            ],
                          ),
                          Text(
                            '20 Jun 2021',
                            style: GoogleFonts.dmSans(
                                fontSize: 12,
                                color:
                                    const Color(0xffFCFCFC).withOpacity(0.46)),
                          )
                        ],
                      ),
                      10.heightBox,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Image.asset('assets/icons/newsbig.png'),
                      ),
                      13.heightBox,
                      Text(
                        'USOSA carnival ends amid\nfunfare in Lagos',
                        style: GoogleFonts.dmSans(
                            fontSize: 24, color: const Color(0xffD0D0D0)),
                      ),
                      7.heightBox,
                      Text(
                        'Former President Donald Trump did not invent fake news. He appropriated it, exploited it and weaponized it. He defined fake news in purely utilitarian Trumpian interests to separate enemies from friends in the news mediaJournalists and their media that disagreed with Trump or exposed his egregious lies became not just his enemies but fake journalists and the purveyors of fake news. He used the label and the insults as weapons in his often-futile attempts to impugn the integrity of responsible journalists and their equally responsible media who would not buy into his lies and alternative facts.Trump is reputedly the greatest liar and dissembler that ever occupied the Oval Office. That he loves to accuse others of lying and faking the news must go down as a kind of special irony. New York City celebrated him as a great liar by erecting a 50-foot wall on which it detailed 50,000 of his greatest lies to the American people. When Twitter could stomach him no more, it yanked out his twitter page, the platform on which he stood to rant and rave and lie to the American people.',
                        style: GoogleFonts.dmSans(
                            fontSize: 16, color: const Color(0xffD0D0D0)),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
