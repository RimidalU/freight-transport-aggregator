import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:untitled55/view/global_widgets/navbarWidget.dart';

import '../../../view/chats/view/chats_screen.dart';
import '../../features.dart';
import '../widgets/account_tab.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/';

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
                const AccountTab(
                  userAvatar: 'assets/images/testprof.png',
                  userName: 'Abdula Azis',
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
            const HorizontalButtonSet(),
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
