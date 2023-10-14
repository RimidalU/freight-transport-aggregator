import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../ui/ui.dart';

class IssueMoneyHistoryItem extends StatelessWidget {
  const IssueMoneyHistoryItem({
    super.key,
    required this.order,
    required this.name,
    required this.price,
    required this.priceTotal,
    required this.fullName,
    required this.date,
  });

  final String name;
  final int price;
  final int order;
  final int priceTotal;
  final String fullName;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
      margin: const EdgeInsets.only(top: 4, bottom: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0x14FCFCFC)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 40,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: const Color(0x14FCFCFC),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Image.asset("assets/images/user.png"),
          ),
          12.widthBox,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: darkTheme(context).primaryTextTheme.headlineMedium,
                ),
                Text(
                  '$fullName, ${DateFormat('dd MMM yyy').format(date)}',
                  style: darkTheme(context).primaryTextTheme.titleMedium,
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '+',
                      style: darkTheme(context).primaryTextTheme.headlineMedium,
                    ),
                    TextSpan(
                      text: '\$',
                      style: darkTheme(context).primaryTextTheme.titleMedium,
                    ),
                    TextSpan(
                      text: price.toString(),
                      style: darkTheme(context).primaryTextTheme.headlineMedium,
                    ),
                  ],
                ),
              ),
              Text(
                'Trip #${order.toString()}',
                style: darkTheme(context).primaryTextTheme.titleMedium,
              ),
            ],
          )
        ],
      ),
    );
  }
}
