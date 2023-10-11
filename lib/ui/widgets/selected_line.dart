import 'package:flutter/material.dart';

class SelectedLine extends StatelessWidget {
  const SelectedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 4,
      decoration: const ShapeDecoration(
        color: Color(0xFF2551EB),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        shadows: [
          BoxShadow(
              color: Color(0xFF2551EB),
              blurRadius: 21,
              offset: Offset(1, 7),
              spreadRadius: 0)
        ],
      ),
    );
  }
}
