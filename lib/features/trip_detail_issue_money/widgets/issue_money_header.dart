import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../ui/ui.dart';

class IssueMoneyHeader extends StatelessWidget {
  const IssueMoneyHeader({
    super.key,
    required this.order,
    required this.vehicle,
    required this.trailer,
  });

  final int order;
  final int vehicle;
  final int trailer;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16), bottomRight: Radius.circular(16)),
        color: Color(0xFF202329),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Trip #$order',
                style: darkTheme(context).primaryTextTheme.headlineMedium,
              ),
              16.widthBox,
              Image.asset("assets/images/TruckIcon.png"),
              4.widthBox,
              Text(
                vehicle.toString(),
                style: darkTheme(context).primaryTextTheme.titleMedium,
              ),
              8.widthBox,
              Image.asset("assets/images/TrailerIcon.png"),
              4.widthBox,
              Text(
                trailer.toString(),
                style: darkTheme(context).primaryTextTheme.titleMedium,
              ),
            ],
          ),
          8.heightBox,
          Text(
            'Issue Money Code',
            style: GoogleFonts.dmSans(
                color: const Color(0xFFD0D0D0),
                fontSize: 24,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
