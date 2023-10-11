import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';

import '../../features/features.dart';
import '../ui.dart';

class NavBarWidget extends StatelessWidget {
  final int selectedIndex;
  const NavBarWidget({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 3.0, right: 2.0),
            child: Container(
              height: 55,
              width: context.width - 83,
              padding: const EdgeInsets.only(left: 27.0, top: 11, right: 33),
              decoration: BoxDecoration(
                color: const Color(0xff202329),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NavBarWidgetItem(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed(HomeScreen.routeName);
                    },
                    selectedIndex: selectedIndex,
                    title: 'Dashboard',
                    index: 0,
                    imageUrl: 'assets/images/Dashboard.png',
                  ),
                  NavBarWidgetItem(
                    onTap: () {
                      Navigator.of(context).pushNamed(NewTripScreen.routeName);
                    },
                    selectedIndex: selectedIndex,
                    title: 'My trip',
                    index: 1,
                    imageUrl: 'assets/images/Trip.png',
                  ),
                  NavBarWidgetItem(
                    onTap: () {
                      Navigator.of(context).pushNamed(AccountScreen.routeName);
                    },
                    selectedIndex: selectedIndex,
                    title: 'User',
                    index: 2,
                    imageUrl: 'assets/images/user.png',
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 55,
            width: 70,
            decoration: BoxDecoration(
              color: const Color(0xff202329),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(child: Image.asset('assets/images/buttonplus.png')),
          ),
        ],
      ),
    );
  }
}
