import 'package:flutter/material.dart';

import '../ui.dart';

class NavBarWidgetItem extends StatelessWidget {
  const NavBarWidgetItem({
    super.key,
    required this.selectedIndex,
    required this.title,
    required this.imageUrl,
    required this.index,
    required this.onTap,
  });

  final String title;
  final String imageUrl;
  final VoidCallback onTap;
  final int selectedIndex;

  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image.asset(imageUrl),
              Text(
                title,
                style: selectedIndex == index
                    ? darkTheme(context).primaryTextTheme.headlineSmall
                    : darkTheme(context).primaryTextTheme.titleSmall,
              ),
            ],
          ),
          if (selectedIndex == index) const SelectedLine(),
        ],
      ),
    );
  }
}
