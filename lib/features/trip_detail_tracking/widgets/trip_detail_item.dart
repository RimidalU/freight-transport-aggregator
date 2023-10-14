import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../ui/ui.dart';

class TripDetailItem extends StatelessWidget {
  const TripDetailItem({
    super.key,
    required this.index,
    required this.title,
    required this.dateTime,
  });

  final int index;
  final String title;
  final DateTime dateTime;

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
                  ? const Color(0xFFFB923C)
                  : const Color(0xFF32343A),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.33),
              ),
            ),
            child: index == 0
                ? const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation(Colors.white),
                    ),
                  )
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
            title,
            style: darkTheme(context).primaryTextTheme.headlineLarge,
          ),
        ],
      ),
      subtitle: Row(
        children: [
          24.widthBox,
          Text(
            DateFormat('EE dd MMM.  hh:mm').format(dateTime),
            style: darkTheme(context).primaryTextTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
