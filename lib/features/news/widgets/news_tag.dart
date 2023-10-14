import 'package:flutter/material.dart';

import '../../../ui/ui.dart';

class NewsTag extends StatelessWidget {
  const NewsTag({
    super.key,
    required this.title,
    required this.onTap,
    this.active = false,
  });

  final String title;
  final VoidCallback? onTap;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.only(right: 4),
        child: Container(
          height: 40,
          width: 46,
          decoration: BoxDecoration(
            color: active ? const Color(0xffFCFCFC).withOpacity(0.08) : null,
            border: Border.all(
              color: const Color(0xffFCFCFC).withOpacity(0.08),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              title,
              style: darkTheme(context).primaryTextTheme.headlineMedium,
            ),
          ),
        ),
      ),
    );
  }
}
