import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled55/view/my_trips/trip.controller.dart';
import 'package:untitled55/view/my_trips/trip.model.dart';

import '../../../ui/ui.dart';

class TripLineItemWidget extends StatelessWidget {
  final TripModel data;

  const TripLineItemWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyTripController controller = Get.find<MyTripController>();
    return Container(
      width: Get.width - 8,
      margin: const EdgeInsets.only(top: 5, bottom: 5),
      decoration: BoxDecoration(
        color: const Color(0xff202329),
        borderRadius: BorderRadius.circular(17),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Trip #${data.index}',
                  style: GoogleFonts.dmSans(
                      fontSize: 14, color: const Color(0xffD0D0D0)),
                ),
                IconButtonGrey(
                  onTap: () {},
                  size: 'small',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/map.png'),
                      3.widthBox,
                      Text(
                        'Navigator',
                        style: GoogleFonts.dmSans(
                            fontSize: 10, color: const Color(0xffD0D0D0)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            width: Get.width,
            color: const Color(0xffFCFCFC).withOpacity(0.08),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Distance',
                              style: GoogleFonts.dmSans(
                                  fontSize: 12,
                                  color: const Color(0xffFCFCFC)
                                      .withOpacity(0.46)),
                            ),
                            Row(
                              children: [
                                Text(
                                  '2260',
                                  style: GoogleFonts.dmSans(
                                      fontSize: 16,
                                      color: const Color(0xffD0D0D0)),
                                ),
                                Text(
                                  'ml',
                                  style: GoogleFonts.dmSans(
                                      fontSize: 16,
                                      color: const Color(0xffFCFCFC)
                                          .withOpacity(0.46)),
                                ),
                              ],
                            ),
                          ],
                        ),
                        30.widthBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Money',
                              style: GoogleFonts.dmSans(
                                  fontSize: 12,
                                  color: const Color(0xffFCFCFC)
                                      .withOpacity(0.46)),
                            ),
                            Row(
                              children: [
                                Text(
                                  '\$',
                                  style: GoogleFonts.dmSans(
                                      fontSize: 16,
                                      color: const Color(0xffFCFCFC)
                                          .withOpacity(0.46)),
                                ),
                                Text(
                                  '500',
                                  style: GoogleFonts.dmSans(
                                      fontSize: 16,
                                      color: const Color(0xffD0D0D0)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Time',
                          style: GoogleFonts.dmSans(
                              fontSize: 12,
                              color: const Color(0xffFCFCFC).withOpacity(0.46)),
                        ),
                        Row(
                          children: [
                            Text(
                              '2',
                              style: GoogleFonts.dmSans(
                                  fontSize: 16, color: const Color(0xffD0D0D0)),
                            ),
                            Text(
                              'd',
                              style: GoogleFonts.dmSans(
                                  fontSize: 16,
                                  color: const Color(0xffFCFCFC)
                                      .withOpacity(0.46)),
                            ),
                            const Text(' '),
                            Text(
                              '16',
                              style: GoogleFonts.dmSans(
                                  fontSize: 16, color: const Color(0xffD0D0D0)),
                            ),
                            Text(
                              'h',
                              style: GoogleFonts.dmSans(
                                  fontSize: 16,
                                  color: const Color(0xffFCFCFC)
                                      .withOpacity(0.46)),
                            ),
                            const Text(' '),
                            Text(
                              '23',
                              style: GoogleFonts.dmSans(
                                  fontSize: 16, color: const Color(0xffD0D0D0)),
                            ),
                            Text(
                              'm',
                              style: GoogleFonts.dmSans(
                                  fontSize: 16,
                                  color: const Color(0xffFCFCFC)
                                      .withOpacity(0.46)),
                            ),
                            const Text(' '),
                          ],
                        ),
                        16.heightBox,
                      ],
                    ),
                  ),
                ],
              ),
              Image.asset('assets/images/Truck.png'),
            ],
          ),
          Container(
            height: 1,
            width: Get.width,
            color: const Color(0xffFCFCFC).withOpacity(0.08),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        IconButtonGrey(
                          onTap: () {},
                          size: 'small',
                          child: Image.asset('assets/images/flag.png'),
                        ),
                        const Text(''),
                      ],
                    ),
                    8.widthBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Omaha NE',
                          style: GoogleFonts.dmSans(
                              fontSize: 14, color: const Color(0xffD0D0D0)),
                        ),
                        Text(
                          'Mon 10/13 00:00',
                          style: GoogleFonts.dmSans(
                              fontSize: 12,
                              color: const Color(0xffFCFCFC).withOpacity(0.46)),
                        ),
                      ],
                    ),
                  ],
                ),
                Image.asset('assets/images/ArrowNarrowRight.png'),
                Row(
                  children: [
                    Column(
                      children: [
                        IconButtonGrey(
                          onTap: () {},
                          size: 'small',
                          child: Image.asset('assets/images/place.png'),
                        ),
                        const Text(''),
                      ],
                    ),
                    8.widthBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Oakland, CA',
                          style: GoogleFonts.dmSans(
                              fontSize: 14, color: const Color(0xffD0D0D0)),
                        ),
                        Text(
                          'Mon 10/13 00:00',
                          style: GoogleFonts.dmSans(
                              fontSize: 12,
                              color: const Color(0xffFCFCFC).withOpacity(0.46)),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (data.status != TripStatus.closed)
            GestureDetector(
              onTap: () => controller.onTripClick(data),
              child: Container(
                width: 334,
                height: 36,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment(1.00, -0.02),
                    end: Alignment(-1, 0.02),
                    colors: [Color(0xFF2550EB), Color(0xFF2897FF)],
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      data.status == TripStatus.avaliable
                          ? "Start trip"
                          : 'Details',
                      style: GoogleFonts.dmSans(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    if (data.status == TripStatus.active)
                      const Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Icon(Icons.arrow_forward_ios,
                            color: Colors.white, size: 16),
                      ),
                  ],
                ),
              ),
            ),
          16.heightBox,
        ],
      ),
    );
  }
}
