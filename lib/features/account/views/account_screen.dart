import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../features/features.dart';
import '../../../ui/ui.dart';
import '../widgets/widgets.dart';

bool val = false;

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  static const routeName = '/account';

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: SingleChildScrollView(
          child: Column(
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
                height: 50,
                width: context.width - 8,
                decoration: const BoxDecoration(
                    color: Color(0xff202329),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(17),
                      bottomRight: Radius.circular(17),
                    )),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      16.widthBox,
                      Image.asset('assets/images/back.png'),
                      3.widthBox,
                      Text('Back',
                          style: darkTheme(context)
                              .primaryTextTheme
                              .headlineMedium),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              AccountInfo(
                onTap: () {},
                email: 'Erichbachman@piedpiper.com',
                name: 'Abdula Azis',
                tags: const ['Team 1', 'Team 3'],
              ),
              3.heightBox,
              OrderInfo(
                vehicle: 'Volvo FMXXD 63j',
                onTap: () {},
                trailer: '5263',
                truck: '5263',
              ),
              4.heightBox,
              AccountLink(
                imageLink: 'assets/images/Notification.png',
                title: 'Turn on notifications',
                action: Row(
                  children: [
                    CupertinoSwitch(
                        value: val,
                        onChanged: (v) {
                          val = v;
                          setState(() {});
                        }),
                    16.widthBox,
                  ],
                ),
              ),
              4.heightBox,
              AccountLink(
                imageLink: 'assets/images/invite.png',
                onTap: () {
                  Navigator.of(context).pushNamed(InviteUserScreen.routeName);
                },
                title: 'Invite people',
                action: Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Image.asset('assets/images/Arrow.png'),
                ),
              ),
              4.heightBox,
              AccountLink(
                imageLink: 'assets/images/Time.png',
                onTap: () {},
                title: 'Time off',
                action: Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Image.asset('assets/images/Arrow.png'),
                ),
              ),
              4.heightBox,
              AccountLink(
                imageLink: 'assets/images/timeout.png',
                onTap: () {},
                title: 'Log out',
                action: Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Image.asset('assets/images/Arrow.png'),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavBarWidget(selectedIndex: 2),
    );
  }
}
