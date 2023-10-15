import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';

import '../../../ui/ui.dart';

class NavigatorInfoItem extends StatelessWidget {
  const NavigatorInfoItem({
    super.key,
    required this.child,
    required this.icon,
    required this.description,
  });

  final Widget child;
  final IconData icon;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon,
                color: const Color(0xFFFCFCFC).withOpacity(.75), size: 16),
            4.widthBox,
            Text(
              description,
              style: darkTheme(context).primaryTextTheme.titleSmall,
            ),
          ],
        ),
        child,
      ],
    );
  }
}
