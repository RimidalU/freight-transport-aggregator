import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';

import '../../../ui/ui.dart';

class TripsProgress extends StatelessWidget {
  const TripsProgress({
    super.key,
    required this.progress,
  });

  final String progress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: 72,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xff202329),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Trips progress',
                  style: darkTheme(context).primaryTextTheme.headlineMedium,
                ),
                Row(
                  children: [
                    Text(
                      '$progress%',
                      style: darkTheme(context).primaryTextTheme.headlineMedium,
                    ),
                    2.widthBox,
                    Image.asset('assets/images/Amount.png'),
                    2.widthBox,
                    Text(
                      '100%',
                      style: darkTheme(context).primaryTextTheme.titleSmall,
                    ),
                  ],
                )
              ],
            ),
            10.heightBox,
            Stack(
              children: [
                Container(
                  height: 12,
                  width: context.width - 132,
                  decoration: BoxDecoration(
                    color: const Color(0xff2551EB),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Container(
                  height: 12,
                  width: context.width - 32,
                  decoration: BoxDecoration(
                    color: const Color(0xffFCFCFC).withOpacity(0.08),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
