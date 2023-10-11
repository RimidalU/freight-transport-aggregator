import 'package:flutter/material.dart';

import '../../../../ui/text_style.dart';

class FieldForm extends StatelessWidget {
  const FieldForm({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
        label: Text(
          label,
          style: HeadlineTextStyle.style500w14.copyWith(
            color: Colors.grey.shade500,
          ),
        ),
      ),
    );
  }
}
