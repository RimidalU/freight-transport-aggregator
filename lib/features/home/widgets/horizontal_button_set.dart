import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';

import '../../../ui/ui.dart';

class HorizontalButtonSet extends StatelessWidget {
  @override
  const HorizontalButtonSet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
          child: Row(
            children: [
              Text('Overview',
                  style: darkTheme(context).primaryTextTheme.headlineMedium),
              16.widthBox,
              Text('Productivity',
                  style: darkTheme(context).primaryTextTheme.titleMedium)
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
        )
      ],
    );
  }
}
