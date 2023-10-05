import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled55/view/my_trips/trip.controller.dart';

class TripLineItemWidget extends StatelessWidget {
  const TripLineItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  'Trip #87538',
                  style: GoogleFonts.dmSans(fontSize: 14, color: const Color(0xffD0D0D0)),
                ),
                Container(
                  height: 25,
                  width: 80,
                  decoration: BoxDecoration(
                    color: const Color(0xffFCFCFC).withOpacity(0.08),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/map.png'),
                      3.widthBox,
                      Text(
                        'Navigator',
                        style: GoogleFonts.dmSans(fontSize: 10, color: const Color(0xffD0D0D0)),
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
                              style: GoogleFonts.dmSans(fontSize: 12, color: const Color(0xffFCFCFC).withOpacity(0.46)),
                            ),
                            Row(
                              children: [
                                Text(
                                  '2260',
                                  style: GoogleFonts.dmSans(fontSize: 16, color: const Color(0xffD0D0D0)),
                                ),
                                Text(
                                  'ml',
                                  style: GoogleFonts.dmSans(fontSize: 16, color: const Color(0xffFCFCFC).withOpacity(0.46)),
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
                              style: GoogleFonts.dmSans(fontSize: 12, color: const Color(0xffFCFCFC).withOpacity(0.46)),
                            ),
                            Row(
                              children: [
                                Text(
                                  '\$',
                                  style: GoogleFonts.dmSans(fontSize: 16, color: const Color(0xffFCFCFC).withOpacity(0.46)),
                                ),
                                Text(
                                  '500',
                                  style: GoogleFonts.dmSans(fontSize: 16, color: const Color(0xffD0D0D0)),
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
                          style: GoogleFonts.dmSans(fontSize: 12, color: const Color(0xffFCFCFC).withOpacity(0.46)),
                        ),
                        Row(
                          children: [
                            Text(
                              '2',
                              style: GoogleFonts.dmSans(fontSize: 16, color: const Color(0xffD0D0D0)),
                            ),
                            Text(
                              'd',
                              style: GoogleFonts.dmSans(fontSize: 16, color: const Color(0xffFCFCFC).withOpacity(0.46)),
                            ),
                            const Text(' '),
                            Text(
                              '16',
                              style: GoogleFonts.dmSans(fontSize: 16, color: const Color(0xffD0D0D0)),
                            ),
                            Text(
                              'h',
                              style: GoogleFonts.dmSans(fontSize: 16, color: const Color(0xffFCFCFC).withOpacity(0.46)),
                            ),
                            const Text(' '),
                            Text(
                              '23',
                              style: GoogleFonts.dmSans(fontSize: 16, color: const Color(0xffD0D0D0)),
                            ),
                            Text(
                              'm',
                              style: GoogleFonts.dmSans(fontSize: 16, color: const Color(0xffFCFCFC).withOpacity(0.46)),
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
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            color: const Color(0xffFCFCFC).withOpacity(0.08),
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Center(
                            child: Image.asset('assets/images/flag.png'),
                          ),
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
                          style: GoogleFonts.dmSans(fontSize: 14, color: const Color(0xffD0D0D0)),
                        ),
                        Text(
                          'Mon 10/13 00:00',
                          style: GoogleFonts.dmSans(fontSize: 12, color: const Color(0xffFCFCFC).withOpacity(0.46)),
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
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            color: const Color(0xffFCFCFC).withOpacity(0.08),
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Center(
                            child: Image.asset('assets/images/place.png'),
                          ),
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
                          style: GoogleFonts.dmSans(fontSize: 14, color: const Color(0xffD0D0D0)),
                        ),
                        Text(
                          'Mon 10/13 00:00',
                          style: GoogleFonts.dmSans(fontSize: 12, color: const Color(0xffFCFCFC).withOpacity(0.46)),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => Get.find<MyTripController>().onTripStartClick(0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff202329),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(child: Image.asset('assets/images/starttrip.png')),
            ),
          ),
          16.heightBox,
        ],
      ),
    );
  }
}
