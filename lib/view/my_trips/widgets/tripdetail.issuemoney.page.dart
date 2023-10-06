import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled55/view/my_trips/trip.model.dart';

class TripDetailIssueMoneyPage extends StatelessWidget {
  final TripModel data;
  const TripDetailIssueMoneyPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        20.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Trip #${data.index}',
              style: GoogleFonts.dmSans(fontSize: 14, color: const Color(0xffD0D0D0)),
            ),
            16.widthBox,
            Image.asset("assets/images/TruckIcon.png"),
            4.widthBox,
            Text(
              '44',
              style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 14, fontWeight: FontWeight.w400),
            ),
            8.widthBox,
            Image.asset("assets/images/TrailerIcon.png"),
            4.widthBox,
            Text(
              '36',
              style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        8.heightBox,
        Text(
          'Issue Money Code',
          style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 24, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
