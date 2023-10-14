import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../ui/widgets/widgets.dart';
import '../widgets/widgets.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  static const routeName = '/news';

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Column(
            children: [
              const AppBarAndNotifications(),
              3.heightBox,
              Container(
                height: 56,
                width: context.width - 8,
                decoration: BoxDecoration(
                  color: const Color(0xff202329),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      16.widthBox,
                      NewsTag(
                        active: true,
                        onTap: () {},
                        title: 'All',
                      ),
                      4.widthBox,
                      const NewsTagsSet(
                        tags: [
                          'Tag1',
                          'Tag2',
                          'Tag3',
                          'Tag4',
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              3.heightBox,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: NewsCardSet(news: const ['', ',', '']),
              ),
              3.heightBox,
              Container(
                width: context.width - 8,
                decoration: BoxDecoration(
                  color: const Color(0xff202329),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      10.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'See more',
                            style: GoogleFonts.dmSans(
                              color: const Color(0xffD0D0D0),
                            ),
                          ),
                          Text(
                            'Recomendation',
                            style: GoogleFonts.dmSans(
                              fontSize: 14,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      10.heightBox,
                      const NewsTabSet(news: ['', '']),
                      // )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavBarWidget(
        selectedIndex: 1,
      ),
    );
  }
}
