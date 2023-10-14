import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TripInfoTab extends StatelessWidget {
  const TripInfoTab({
    super.key,
    required this.truck,
    required this.trailer,
    required this.vehicle,
    required this.earmed,
    required this.earmedTotal,
  });

  final String truck;
  final String trailer;
  final String vehicle;
  final int earmed;
  final int earmedTotal;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Earmed',
                  style: GoogleFonts.dmSans(
                      fontSize: 12,
                      color: const Color(0xffFCFCFC).withOpacity(0.46)),
                ),
                Row(
                  children: [
                    Text(
                      '\$',
                      style: GoogleFonts.dmSans(
                          fontSize: 16,
                          color: const Color(0xffFCFCFC).withOpacity(0.46)),
                    ),
                    Text(
                      earmed.toString(),
                      style: GoogleFonts.dmSans(
                          fontSize: 16, color: const Color(0xffD0D0D0)),
                    ),
                    3.widthBox,
                    Text(
                      '/',
                      style: GoogleFonts.dmSans(
                          fontSize: 16,
                          color: const Color(0xffFCFCFC).withOpacity(0.46)),
                    ),
                    3.widthBox,
                    Text(
                      '\$${earmedTotal.toString()}',
                      style: GoogleFonts.dmSans(
                          fontSize: 16,
                          color: const Color(0xffFCFCFC).withOpacity(0.46)),
                    ),
                  ],
                ),
              ],
            ),
            18.widthBox,
            Container(
              height: 40,
              width: 1,
              color: const Color(0xffFCFCFC).withOpacity(0.08),
            ),
            18.widthBox,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Truck:',
                    style: GoogleFonts.dmSans(
                        fontSize: 12,
                        color: const Color(0xffFCFCFC).withOpacity(0.46)),
                  ),
                  Text(
                    truck,
                    style: GoogleFonts.dmSans(
                        fontSize: 16, color: const Color(0xffD0D0D0)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Trailer:',
                    style: GoogleFonts.dmSans(
                        fontSize: 12,
                        color: const Color(0xffFCFCFC).withOpacity(0.46)),
                  ),
                  Text(
                    trailer,
                    style: GoogleFonts.dmSans(
                      fontSize: 16,
                      color: const Color(0xffD0D0D0),
                    ),
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Vehicle:',
                    style: GoogleFonts.dmSans(
                        fontSize: 12,
                        color: const Color(0xffFCFCFC).withOpacity(0.46)),
                  ),
                  Text(
                    vehicle,
                    style: GoogleFonts.dmSans(
                        fontSize: 16, color: const Color(0xffD0D0D0)),
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
