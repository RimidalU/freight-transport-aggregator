import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../features/features.dart';
import '../../../ui/ui.dart';
import '../widgets/widgets.dart';

class TripDetailTrackingScreen extends StatelessWidget {
  final TripModel trip;
  const TripDetailTrackingScreen({super.key, required this.trip});

  static const routeName = '/trip-detail-tracking';

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<MyTripController>();
    return Container(
      decoration: const BoxDecoration(color: Color(0xFF202329)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          20.heightBox,
          Container(
            height: 28,
            padding: const EdgeInsets.symmetric(vertical: 4),
            margin: const EdgeInsets.only(left: 16, right: 16),
            decoration: ShapeDecoration(
              color: const Color(0x14D7BD32),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Pick Up',
                  style: GoogleFonts.dmSans(
                      color: const Color(0xFFD7BC31),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              itemExtent: 56,
              children: List.generate(
                15,
                (index) => TripDetailItem(
                  index: index,
                  title: "54 Radley Street, Off 25",
                  dateTime: DateTime.now(),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFFCFCFC).withOpacity(0.08),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(17), topRight: Radius.circular(17)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: ActionButton(
                onTap: () => controller.onTripCheckinTap(trip),
                type: 'normal',
                child: Text(
                  'Check In',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
