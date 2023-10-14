import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';

import '../ui.dart';

class TripInfoTab extends StatelessWidget {
  const TripInfoTab({
    super.key,
    required this.truck,
    required this.trailer,
    required this.vehicle,
    required this.earmed,
    required this.earmedTotal,
  });

  final String truck;
  final String trailer;
  final String vehicle;
  final int earmed;
  final int earmedTotal;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Earmed',
                  style: darkTheme(context).primaryTextTheme.titleSmall,
                ),
                Row(
                  children: [
                    Text(
                      '\$',
                      style: darkTheme(context).primaryTextTheme.titleLarge,
                    ),
                    Text(
                      earmed.toString(),
                      style: darkTheme(context).primaryTextTheme.headlineLarge,
                    ),
                    3.widthBox,
                    Text(
                      '/',
                      style: darkTheme(context).primaryTextTheme.titleLarge,
                    ),
                    3.widthBox,
                    Text(
                      '\$${earmedTotal.toString()}',
                      style: darkTheme(context).primaryTextTheme.titleLarge,
                    ),
                  ],
                ),
              ],
            ),
            18.widthBox,
            Container(
              height: 40,
              width: 1,
              color: const Color(0xffFCFCFC).withOpacity(0.08),
            ),
            18.widthBox,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Truck:',
                    style: darkTheme(context).primaryTextTheme.titleSmall,
                  ),
                  Text(
                    truck,
                    style: darkTheme(context).primaryTextTheme.headlineLarge,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Trailer:',
                    style: darkTheme(context).primaryTextTheme.titleSmall,
                  ),
                  Text(
                    trailer,
                    style: darkTheme(context).primaryTextTheme.headlineLarge,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Vehicle:',
                    style: darkTheme(context).primaryTextTheme.titleSmall,
                  ),
                  Text(
                    vehicle,
                    style: darkTheme(context).primaryTextTheme.headlineLarge,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
