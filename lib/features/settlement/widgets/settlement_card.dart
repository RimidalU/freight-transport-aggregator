import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../ui/ui.dart';

class SettlementCard extends StatelessWidget {
  const SettlementCard({
    super.key,
    required this.order,
    required this.name,
    required this.price,
    required this.date,
  });

  final String order;
  final String name;
  final double price;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Container(
        height: 64,
        width: context.width - 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xffFCFCFC).withOpacity(0.08),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButtonGrey(
                    onTap: () {},
                    child: Image.asset('assets/icons/Doc.png'),
                  ),
                  12.widthBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        order,
                        style:
                            darkTheme(context).primaryTextTheme.headlineMedium,
                      ),
                      Text(
                        name,
                        style: darkTheme(context).primaryTextTheme.titleSmall,
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '\$${price.toInt()}',
                    style: darkTheme(context).primaryTextTheme.headlineMedium,
                  ),
                  Text(
                    DateFormat('dd MMM yyy').format(date),
                    style: darkTheme(context).primaryTextTheme.titleSmall,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
