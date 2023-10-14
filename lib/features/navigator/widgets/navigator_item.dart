import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../ui/ui.dart';

class NavigatorItem extends StatelessWidget {
  const NavigatorItem({
    super.key,
    required this.index,
    required this.name,
    required this.date,
  });

  final int index;
  final String name;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 32,
      leading: Column(
        mainAxisAlignment:
            index != 14 ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (index != 0)
            Container(width: 3, height: 12, color: const Color(0xFF32343A)),
          Container(
            width: 32,
            height: 32,
            decoration: ShapeDecoration(
              color: index == 0
                  ? const Color(0xFF2551EB)
                  : const Color(0xFF32343A),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.33)),
            ),
            child: index == 0
                ? const Icon(Icons.play_circle, color: Colors.white, size: 16)
                : Icon(Icons.place,
                    color: const Color(0xFFFCFCFC).withOpacity(.46), size: 16),
          ),
          if (index != 14)
            Container(width: 3, height: 12, color: const Color(0xFF32343A)),
        ],
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.check,
              color: const Color(0xFFFCFCFC).withOpacity(.46), size: 16),
          8.widthBox,
          Text(
            name,
            style: darkTheme(context).primaryTextTheme.headlineLarge,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
      subtitle: Row(
        children: [
          24.widthBox,
          Text(
            DateFormat('EE dd MMM.  hh:mm').format(date),
            style: darkTheme(context).primaryTextTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
