import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';

class TripStatesMenu extends StatelessWidget {
  const TripStatesMenu({
    super.key,
    required this.onTapAvailable,
    required this.availableCount,
    required this.onTapCurrent,
    required this.currentCount,
    required this.onTapCloses,
    required this.closesCount,
    required this.selectedIndex,
  });

  final VoidCallback onTapAvailable;
  final Widget availableCount;
  final VoidCallback onTapCurrent;
  final Widget currentCount;
  final VoidCallback onTapCloses;
  final Widget closesCount;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector(
            onTap: onTapAvailable,
            child: availableCount,
          ),
          15.widthBox,
          GestureDetector(
            onTap: onTapCurrent,
            child: currentCount,
          ),
          15.widthBox,
          GestureDetector(
            onTap: onTapCloses,
            child: closesCount,
          ),
        ],
      ),
    );
  }
}
