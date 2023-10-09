import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderInfo extends StatelessWidget {
  const OrderInfo({
    super.key,
    required this.onTap,
    required this.truck,
    required this.trailer,
    required this.vehicle,
    required this.status,
  });

  final VoidCallback? onTap;
  final String truck;
  final String trailer;
  final String vehicle;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: 72,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xff202329),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          16.widthBox,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Truck:',
                style: GoogleFonts.dmSans(
                  fontSize: 12,
                  color: const Color(0xffFCFCFC).withOpacity(0.46),
                ),
              ),
              Text(
                truck,
                style: GoogleFonts.dmSans(
                  fontSize: 16,
                  color: const Color(0xffD0D0D0),
                ),
              ),
            ],
          ),
          20.widthBox,
          Container(
            height: 27,
            width: 2,
            color: const Color(0xffFCFCFC).withOpacity(0.08),
          ),
          20.widthBox,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Trailer:',
                style: GoogleFonts.dmSans(
                  fontSize: 12,
                  color: const Color(0xffFCFCFC).withOpacity(0.46),
                ),
              ),
              Text(
                trailer,
                style: GoogleFonts.dmSans(
                  fontSize: 16,
                  color: const Color(0xffD0D0D0),
                ),
              ),
            ],
          ),
          20.widthBox,
          Container(
            height: 27,
            width: 2,
            color: const Color(0xffFCFCFC).withOpacity(0.08),
          ),
          20.widthBox,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Vehicle:',
                  style: GoogleFonts.dmSans(
                    fontSize: 12,
                    color: const Color(0xffFCFCFC).withOpacity(0.46),
                  ),
                ),
                Text(
                  vehicle,
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
          7.widthBox,
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(111),
              color: const Color(0xff32A5D7).withOpacity(0.08),
            ),
            height: 40,
            width: 104,
            child: Center(
              child: Text(
                status,
                style: GoogleFonts.dmSans(color: const Color(0xff32A5D7)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
