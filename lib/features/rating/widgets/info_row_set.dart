import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'widgets.dart';

class InfoRowSet extends StatelessWidget {
  const InfoRowSet({
    super.key,
    required this.days,
    required this.miles,
    required this.trips,
  });

  final double trips;
  final double miles;
  final int days;

  @override
  Widget build(BuildContext context) {
    var formatter = NumberFormat('#,###');
    final separatedMiles = formatter.format(miles.toInt()).replaceAll(',', ' ');

    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      InfoRow(
        description: 'Closed trips',
        title: trips.toInt().toString(),
      ),
      InfoRow(
        description: 'Total miles in VTS',
        title: '${separatedMiles.toString()}ml',
      ),
      InfoRow(
        description: 'Year to date ml',
        title: '${days.toInt()}days',
      ),
    ]);
  }
}
