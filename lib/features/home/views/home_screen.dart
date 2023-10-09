import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled55/view/Account/AccountScreen.dart';
import 'package:untitled55/view/chats/view/chats_screen.dart';
import 'package:untitled55/view/global_widgets/navbarWidget.dart';

import '../../features.dart';
import '../widgets/app_bar_custom.dart';
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
            AppBarCustom(
              date: DateTime.now(),
              onTapBell: () {},
              onTapSearch: () {},
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
                const RatingInfoButton(
                  onTapLink: RatingScreen.routeName,
                  rating: 9.23,
                ),
              ],
            ),
            3.heightBox,
            OrderInfo(
              onTap: () {},
              status: 'Vacation',
              trailer: '5263',
              truck: '5263',
              vehicle: 'Volvo FMX...',
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
