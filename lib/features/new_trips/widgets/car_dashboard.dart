import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';

import '../../../ui/ui.dart';

class CarDashboard extends StatelessWidget {
  const CarDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Distance',
                          style:
                              darkTheme(context).primaryTextTheme.titleSmall),
                      Row(
                        children: [
                          Text('2260',
                              style: darkTheme(context)
                                  .primaryTextTheme
                                  .headlineLarge),
                          Text('ml',
                              style: darkTheme(context)
                                  .primaryTextTheme
                                  .titleLarge),
                        ],
                      ),
                    ],
                  ),
                  30.widthBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Money',
                          style:
                              darkTheme(context).primaryTextTheme.titleSmall),
                      Row(
                        children: [
                          Text('\$',
                              style: darkTheme(context)
                                  .primaryTextTheme
                                  .titleLarge),
                          Text('500',
                              style: darkTheme(context)
                                  .primaryTextTheme
                                  .headlineLarge),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Time',
                      style: darkTheme(context).primaryTextTheme.titleSmall),
                  Row(
                    children: [
                      Text('2',
                          style: darkTheme(context)
                              .primaryTextTheme
                              .headlineLarge),
                      Text('d',
                          style:
                              darkTheme(context).primaryTextTheme.titleLarge),
                      const Text(' '),
                      Text('16',
                          style: darkTheme(context)
                              .primaryTextTheme
                              .headlineLarge),
                      Text('h',
                          style:
                              darkTheme(context).primaryTextTheme.titleLarge),
                      const Text(' '),
                      Text('23',
                          style: darkTheme(context)
                              .primaryTextTheme
                              .headlineLarge),
                      Text('m',
                          style:
                              darkTheme(context).primaryTextTheme.titleLarge),
                      const Text(' '),
                    ],
                  ),
                  16.heightBox,
                ],
              ),
            ),
          ],
        ),
        Image.asset('assets/images/Truck.png'),
      ],
    );
  }
}
