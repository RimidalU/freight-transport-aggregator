import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

class SettlementCardSet extends StatelessWidget {
  const SettlementCardSet({
    super.key,
    required this.settlements,
  });

  final List<Object> settlements;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height - 228,
      width: context.width - 32,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return SettlementCard(
            order: '#2131231-T',
            name: 'Wade Warren',
            price: 1000,
            date: DateTime.now(),
          );
        },
        itemCount: settlements.length + 10, //TODO remove
      ),
    );
  }
}
