import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../features/features.dart';
import '../../../ui/ui.dart';

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
                (index) => ListTile(
                  minLeadingWidth: 32,
                  leading: Column(
                    mainAxisAlignment: index != 14
                        ? MainAxisAlignment.end
                        : MainAxisAlignment.start,
                    children: [
                      if (index != 0)
                        Container(
                            width: 3,
                            height: 12,
                            color: const Color(0xFF32343A)),
                      Container(
                        width: 32,
                        height: 32,
                        decoration: ShapeDecoration(
                          color: index == 0
                              ? const Color(0xFFFB923C)
                              : const Color(0xFF32343A),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.33)),
                        ),
                        child: index == 0
                            ? const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  valueColor:
                                      AlwaysStoppedAnimation(Colors.white),
                                ),
                              )
                            : Icon(Icons.place,
                                color: const Color(0xFFFCFCFC).withOpacity(.46),
                                size: 16),
                      ),
                      if (index != 14)
                        Container(
                            width: 3,
                            height: 12,
                            color: const Color(0xFF32343A)),
                    ],
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.check,
                          color: const Color(0xFFFCFCFC).withOpacity(.46),
                          size: 16),
                      8.widthBox,
                      Text(
                        "54 Radley Street, Off 25",
                        style:
                            darkTheme(context).primaryTextTheme.headlineLarge,
                      ),
                    ],
                  ),
                  subtitle: Row(
                    children: [
                      24.widthBox,
                      Text(
                        'Mon 23 Mar.  11:00',
                        style: darkTheme(context).primaryTextTheme.titleMedium,
                      ),
                    ],
                  ),
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
