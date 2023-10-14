import 'package:flutter/material.dart';

import '../../../ui/ui.dart';

class InfoRow extends StatelessWidget {
  const InfoRow({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          description,
          style: darkTheme(context).primaryTextTheme.titleSmall,
        ),
        Text(
          title,
          style: darkTheme(context).primaryTextTheme.headlineLarge,
        )
      ],
    );
  }
}
