import 'package:flutter/material.dart';

class IconButtonGrey extends StatelessWidget {
  const IconButtonGrey({
    super.key,
    this.onTap,
    this.size,
    required this.child,
  });

  final VoidCallback? onTap;
  final Widget child;
  final String? size;

  @override
  Widget build(BuildContext context) {
    final height = {
          'normal': 40.0,
          'small': 24.0,
          'tag': 20.0,
          'large': 44.0,
        }[size] ??
        40.0;

    final borderRadius = {
          'normal': 12.0,
          'small': 4.0,
          'tag': 4.0,
          'large': 12.0,
        }[size] ??
        12.0;

    final padding = {
          'normal': 12.0,
          'small': 7.0,
          'tag': 7.0,
          'large': 14.0,
        }[size] ??
        12.0;

    return InkWell(
      onTap: onTap ?? () {},
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: padding),
        height: height,
        // width: 40,
        decoration: BoxDecoration(
          color: const Color(0xffFCFCFC).withOpacity(0.08),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
