import 'package:flutter/material.dart';

import '../../../ui/ui.dart';

class TripStatesMenuItem extends StatelessWidget {
  const TripStatesMenuItem({
    super.key,
    required this.title,
    required this.count,
    required this.isActive,
  });

  final String title;
  final int count;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Text('$title · ${count.toString()}',
        style: isActive
            ? darkTheme(context).primaryTextTheme.headlineMedium
            : darkTheme(context).primaryTextTheme.titleMedium);
  }
}
