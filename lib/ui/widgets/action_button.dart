import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    this.onTap,
    this.type,
    required this.child,
  });

  final VoidCallback? onTap;
  final Widget child;
  final String? type;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width - 16;

    final firstGradientItem = {
          'normal': 0xff2551eb,
          'revers': 0xff25A4EB,
          'light': 0xff2563EB,
        }[type] ??
        0xff2551eb;

    final secondGradientItem = {
          'normal': 0xff2898ff,
          'revers': 0xff287EFF,
          'light': 0xff03ABE0,
        }[type] ??
        0xff2898ff;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: width - 16,
        height: 44,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
              colors: [
                Color(firstGradientItem),
                Color(secondGradientItem),
              ],
            )),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
