import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';

import '../../../ui/ui.dart';
import 'navigator_info_item.dart';

class NavigatorInfoItemSet extends StatelessWidget {
  const NavigatorInfoItemSet({
    super.key,
    required this.distance,
    required this.time,
    required this.speed,
  });

  final int distance;
  final Duration time;
  final double speed;

  @override
  Widget build(BuildContext context) {
    var seconds = time.inSeconds;

    final days = seconds ~/ Duration.secondsPerDay;
    seconds -= days * Duration.secondsPerDay;

    final hours = seconds ~/ Duration.secondsPerHour;
    seconds -= hours * Duration.secondsPerHour;

    final minutes = seconds ~/ Duration.secondsPerMinute;
    seconds -= minutes * Duration.secondsPerMinute;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  NavigatorInfoItem(
                    description: 'Distance',
                    icon: Icons.place,
                    child: Row(
                      children: [
                        Text(
                          distance.toString(),
                          style:
                              darkTheme(context).primaryTextTheme.headlineLarge,
                        ),
                        Text(
                          'ml',
                          style: darkTheme(context).primaryTextTheme.titleLarge,
                        ),
                      ],
                    ),
                  ),
                  30.widthBox,
                  NavigatorInfoItem(
                    description: 'Time',
                    icon: Icons.timer,
                    child: Row(
                      children: [
                        Text(
                          days.toString(),
                          style:
                              darkTheme(context).primaryTextTheme.headlineLarge,
                        ),
                        Text(
                          'd',
                          style: darkTheme(context).primaryTextTheme.titleLarge,
                        ),
                        const Text(' '),
                        Text(
                          hours.toString(),
                          style:
                              darkTheme(context).primaryTextTheme.headlineLarge,
                        ),
                        Text(
                          'h',
                          style: darkTheme(context).primaryTextTheme.titleLarge,
                        ),
                        const Text(' '),
                        Text(
                          minutes.toString(),
                          style:
                              darkTheme(context).primaryTextTheme.headlineLarge,
                        ),
                        Text(
                          'm',
                          style: darkTheme(context).primaryTextTheme.titleLarge,
                        ),
                      ],
                    ),
                  ),
                  30.widthBox,
                  NavigatorInfoItem(
                    description: 'Speed',
                    icon: Icons.speed,
                    child: Row(
                      children: [
                        Text(
                          speed.toString(),
                          style:
                              darkTheme(context).primaryTextTheme.headlineLarge,
                        ),
                        Text(
                          'mph',
                          style:
                              darkTheme(context).primaryTextTheme.titleMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
