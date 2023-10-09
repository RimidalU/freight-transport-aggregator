import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled55/view/Account/AccountScreen.dart';
import 'package:untitled55/view/chats/view/chats_screen.dart';
import 'package:untitled55/view/global_widgets/navbarWidget.dart';
import 'package:untitled55/view/rating/RatingScreen.dart';

import '../../../ui/ui.dart';
import '../../features.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 70,
              width: context.width - 8,
              decoration: const BoxDecoration(
                color: Color(0xff202329),
              ),
            ),
            Container(
              height: 1,
              width: context.width - 8,
              color: const Color(0xffffffff).withOpacity(0.2),
            ),
            Container(
              height: 56,
              width: context.width - 8,
              decoration: const BoxDecoration(
                  color: Color(0xff202329),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(17),
                    bottomRight: Radius.circular(17),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      16.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          5.heightBox,
                          Text(
                            'Hello',
                            style: GoogleFonts.dmSans(
                                fontSize: 12,
                                color:
                                    const Color(0xffFCFCFC).withOpacity(0.46)),
                          ),
                          3.widthBox,
                          Text(
                            'Thusday 04.05.2023',
                            style: GoogleFonts.dmSans(
                                fontSize: 14, color: const Color(0xffD0D0D0)),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButtonGrey(
                        onTap: () {},
                        child: Image.asset('assets/images/Search.png'),
                      ),
                      8.widthBox,
                      IconButtonGrey(
                        onTap: () {},
                        child:
                            Image.asset('assets/images/NotificationWhite.png'),
                      ),
                      16.widthBox,
                    ],
                  ),
                ],
              ),
            ),
            3.heightBox,
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AccountScreen()));
                  },
                  child: Container(
                    width: context.width - 120,
                    height: 72,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xff202329),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              16.widthBox,
                              Image.asset('assets/images/testprof.png'),
                              3.widthBox,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Good Morning',
                                    style: GoogleFonts.dmSans(
                                      fontSize: 12,
                                      color: const Color(0xffFCFCFC)
                                          .withOpacity(0.46),
                                    ),
                                  ),
                                  Text(
                                    'Abdula Azis',
                                    style: GoogleFonts.dmSans(
                                      fontSize: 16,
                                      color: const Color(0xffD0D0D0),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Image.asset('assets/images/Arrow.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                4.widthBox,
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RatingScreen()));
                  },
                  child: Container(
                    width: 111,
                    height: 72,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xff202329),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Image.asset('assets/images/rating.png'),
                          4.widthBox,
                          Column(
                            children: [
                              Text(
                                'Rating',
                                style: GoogleFonts.dmSans(
                                  fontSize: 12,
                                  color:
                                      const Color(0xffFCFCFC).withOpacity(0.46),
                                ),
                              ),
                              Text(
                                '9.23',
                                style: GoogleFonts.dmSans(
                                  fontSize: 16,
                                  color: const Color(0xffD0D0D0),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            3.heightBox,
            Container(
              width: context.width,
              height: 72,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xff202329),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  16.widthBox,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Truck:',
                        style: GoogleFonts.dmSans(
                          fontSize: 12,
                          color: const Color(0xffFCFCFC).withOpacity(0.46),
                        ),
                      ),
                      Text(
                        '5263',
                        style: GoogleFonts.dmSans(
                          fontSize: 16,
                          color: const Color(0xffD0D0D0),
                        ),
                      ),
                    ],
                  ),
                  20.widthBox,
                  Container(
                    height: 27,
                    width: 2,
                    color: const Color(0xffFCFCFC).withOpacity(0.08),
                  ),
                  20.widthBox,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Trailer:',
                        style: GoogleFonts.dmSans(
                          fontSize: 12,
                          color: const Color(0xffFCFCFC).withOpacity(0.46),
                        ),
                      ),
                      Text(
                        '5263',
                        style: GoogleFonts.dmSans(
                          fontSize: 16,
                          color: const Color(0xffD0D0D0),
                        ),
                      ),
                    ],
                  ),
                  20.widthBox,
                  Container(
                    height: 27,
                    width: 2,
                    color: const Color(0xffFCFCFC).withOpacity(0.08),
                  ),
                  20.widthBox,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Vehicle:',
                        style: GoogleFonts.dmSans(
                          fontSize: 12,
                          color: const Color(0xffFCFCFC).withOpacity(0.46),
                        ),
                      ),
                      Text(
                        'Volvo FMX...',
                        style: GoogleFonts.dmSans(
                          fontSize: 16,
                          color: const Color(0xffD0D0D0),
                        ),
                      ),
                    ],
                  ),
                  7.widthBox,
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(111),
                      color: const Color(0xff32A5D7).withOpacity(0.08),
                    ),
                    height: 40,
                    width: 104,
                    child: Center(
                      child: Text(
                        'Vacation',
                        style:
                            GoogleFonts.dmSans(color: const Color(0xff32A5D7)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
              child: Row(
                children: [
                  Text(
                    'Overview',
                    style: GoogleFonts.dmSans(
                        fontSize: 14, color: const Color(0xffD0D0D0)),
                  ),
                  16.widthBox,
                  Text(
                    'Productivity',
                    style: GoogleFonts.dmSans(
                        fontSize: 14,
                        color: const Color(0xffD0D0D0).withOpacity(0.46)),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  //2551EB
                  width: 12,
                  height: 2,
                  color: const Color(0xffFCFCFC).withOpacity(0.08),
                ),
                Container(
                  //2551EB
                  width: 60,
                  height: 3,
                  color: const Color(0xff2551EB),
                ),
                Container(
                  //2551EB
                  width: context.width - 72,
                  height: 2,
                  color: const Color(0xffFCFCFC).withOpacity(0.08),
                ),
              ],
            ),
            16.heightBox,
            const TripsProgress(
              progress: '33',
            ),
            16.heightBox,
            Row(
              children: [
                const DashboardTab(
                  title: 'My chat',
                  imageLink: 'assets/images/mychat.png',
                  onTapLink: ChatsScreen.routeName,
                ),
                3.widthBox,
                const DashboardTab(
                  title: 'My Settlement',
                  imageLink: 'assets/images/mysetl.png',
                  onTapLink: SettlementScreen.routeName,
                ),
              ],
            ),
            3.heightBox,
            Row(
              children: [
                const DashboardTab(
                  title: 'My News',
                  imageLink: 'assets/images/mynews.png',
                  onTapLink: NewsScreen.routeName,
                ),
                3.widthBox,
                const DashboardTab(
                  title: 'Issue Money Code',
                  imageLink: 'assets/images/moneycode.png',
                  onTapLink: '/', //TODO implement IssueMoneyScreen
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: const NavBarWidget(selectedIndex: 0),
    );
  }
}
