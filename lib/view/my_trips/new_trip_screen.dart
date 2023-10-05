import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled55/components/app_bar_widget.dart';
import 'package:untitled55/view/global_widgets/navbarWidget.dart';

class NewTripScreen extends StatelessWidget {
  const NewTripScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0, left: 4.0, bottom: 4.0),
      child: Scaffold(
        backgroundColor: const Color(0xff121418),
        appBar: AppBarWidget(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              3.heightBox,
              Container(
                height: 150,
                width: context.width - 8,
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
                          Row(
                            children: [
                              const CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/testprof.png'),
                              ),
                              8.widthBox,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Good Morning',
                                    style: GoogleFonts.dmSans(
                                      fontSize: 14,
                                      color: const Color(0xffFCFCFC)
                                          .withOpacity(0.46),
                                    ),
                                  ),
                                  Text(
                                    'Abdula Azis',
                                    style: GoogleFonts.dmSans(
                                        fontSize: 18,
                                        color: const Color(0xffD0D0D0)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  // color: const Color(0xffFCFCFC).withOpacity(0.08),
                                  border: Border.all(
                                      color: const Color(0xffFCFCFC)
                                          .withOpacity(0.08)),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child: Image.asset('assets/images/Arrow.png'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: context.width - 45,
                      color: const Color(0xffFCFCFC).withOpacity(0.08),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Earmed',
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
                                    '1000',
                                    style: GoogleFonts.dmSans(
                                        fontSize: 16,
                                        color: const Color(0xffD0D0D0)),
                                  ),
                                  3.widthBox,
                                  Text(
                                    '/',
                                    style: GoogleFonts.dmSans(
                                        fontSize: 16,
                                        color: const Color(0xffFCFCFC)
                                            .withOpacity(0.46)),
                                  ),
                                  3.widthBox,
                                  Text(
                                    '\$5000',
                                    style: GoogleFonts.dmSans(
                                        fontSize: 16,
                                        color: const Color(0xffFCFCFC)
                                            .withOpacity(0.46)),
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Truck:',
                                style: GoogleFonts.dmSans(
                                    fontSize: 12,
                                    color: const Color(0xffFCFCFC)
                                        .withOpacity(0.46)),
                              ),
                              Text(
                                '5263',
                                style: GoogleFonts.dmSans(
                                    fontSize: 16,
                                    color: const Color(0xffD0D0D0)),
                              ),
                            ],
                          ),
                          18.widthBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Trailer:',
                                style: GoogleFonts.dmSans(
                                    fontSize: 12,
                                    color: const Color(0xffFCFCFC)
                                        .withOpacity(0.46)),
                              ),
                              Text(
                                '5263',
                                style: GoogleFonts.dmSans(
                                    fontSize: 16,
                                    color: const Color(0xffD0D0D0)),
                              ),
                            ],
                          ),
                          18.widthBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Vehicle:',
                                style: GoogleFonts.dmSans(
                                    fontSize: 12,
                                    color: const Color(0xffFCFCFC)
                                        .withOpacity(0.46)),
                              ),
                              Text(
                                'Volvo FMX..',
                                style: GoogleFonts.dmSans(
                                    fontSize: 16,
                                    color: const Color(0xffD0D0D0)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              15.heightBox,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Text(
                      'Available Trips · 2',
                      style: GoogleFonts.dmSans(
                          fontSize: 14, color: const Color(0xffD0D0D0)),
                    ),
                    15.widthBox,
                    Text(
                      'Current Trips · 1',
                      style: GoogleFonts.dmSans(
                          fontSize: 14,
                          color: const Color(0xffFCFCFC).withOpacity(0.46)),
                    ),
                    15.widthBox,
                    Text(
                      'Closen Trips · 16',
                      style: GoogleFonts.dmSans(
                          fontSize: 14,
                          color: const Color(0xffFCFCFC).withOpacity(0.46)),
                    ),
                  ],
                ),
              ),
              // Container(
              //   height: 100,
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     children: <Widget>[
              //       Text(
              //         ' Available Trips · 2 ',
              //         style: GoogleFonts.dmSans(
              //             fontSize: 14, color: const Color(0xffD0D0D0)),
              //       ),
              //       Text(
              //         ' Current Trips · 1 ',
              //         style: GoogleFonts.dmSans(
              //             fontSize: 14, color: const Color(0xffD0D0D0)),
              //       ),
              //       Text(
              //         ' Closen Trips · 16 ',
              //         style: GoogleFonts.dmSans(
              //             fontSize: 14, color: const Color(0xffD0D0D0)),
              //       ),
              //     ],
              //   ),
              // ),
              10.heightBox,
              Container(
                height: 1,
                width: context.width - 45,
                color: const Color(0xffFCFCFC).withOpacity(0.08),
              ),
              10.heightBox,
              Container(
                width: context.width - 8,
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
                            style: GoogleFonts.dmSans(
                                fontSize: 14, color: const Color(0xffD0D0D0)),
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
                                  style: GoogleFonts.dmSans(
                                      fontSize: 10,
                                      color: const Color(0xffD0D0D0)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: context.width,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Time',
                                    style: GoogleFonts.dmSans(
                                        fontSize: 12,
                                        color: const Color(0xffFCFCFC)
                                            .withOpacity(0.46)),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '2',
                                        style: GoogleFonts.dmSans(
                                            fontSize: 16,
                                            color: const Color(0xffD0D0D0)),
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
                                            fontSize: 16,
                                            color: const Color(0xffD0D0D0)),
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
                                            fontSize: 16,
                                            color: const Color(0xffD0D0D0)),
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
                      width: context.width,
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
                                      color: const Color(0xffFCFCFC)
                                          .withOpacity(0.08),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: Center(
                                      child:
                                          Image.asset('assets/images/flag.png'),
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
                                    style: GoogleFonts.dmSans(
                                        fontSize: 14,
                                        color: const Color(0xffD0D0D0)),
                                  ),
                                  Text(
                                    'Mon 10/13 00:00',
                                    style: GoogleFonts.dmSans(
                                        fontSize: 12,
                                        color: const Color(0xffFCFCFC)
                                            .withOpacity(0.46)),
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
                                      color: const Color(0xffFCFCFC)
                                          .withOpacity(0.08),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                          'assets/images/place.png'),
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
                                    style: GoogleFonts.dmSans(
                                        fontSize: 14,
                                        color: const Color(0xffD0D0D0)),
                                  ),
                                  Text(
                                    'Mon 10/13 00:00',
                                    style: GoogleFonts.dmSans(
                                        fontSize: 12,
                                        color: const Color(0xffFCFCFC)
                                            .withOpacity(0.46)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff202329),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                          child: Image.asset('assets/images/starttrip.png')),
                    ),
                    16.heightBox,
                  ],
                ),
              ),
              10.heightBox,
              Container(
                width: context.width - 8,
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
                            style: GoogleFonts.dmSans(
                                fontSize: 14, color: const Color(0xffD0D0D0)),
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
                                  style: GoogleFonts.dmSans(
                                      fontSize: 10,
                                      color: const Color(0xffD0D0D0)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: context.width,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Time',
                                    style: GoogleFonts.dmSans(
                                        fontSize: 12,
                                        color: const Color(0xffFCFCFC)
                                            .withOpacity(0.46)),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '2',
                                        style: GoogleFonts.dmSans(
                                            fontSize: 16,
                                            color: const Color(0xffD0D0D0)),
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
                                            fontSize: 16,
                                            color: const Color(0xffD0D0D0)),
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
                                            fontSize: 16,
                                            color: const Color(0xffD0D0D0)),
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
                      width: context.width,
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
                                      color: const Color(0xffFCFCFC)
                                          .withOpacity(0.08),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: Center(
                                      child:
                                          Image.asset('assets/images/flag.png'),
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
                                    style: GoogleFonts.dmSans(
                                        fontSize: 14,
                                        color: const Color(0xffD0D0D0)),
                                  ),
                                  Text(
                                    'Mon 10/13 00:00',
                                    style: GoogleFonts.dmSans(
                                        fontSize: 12,
                                        color: const Color(0xffFCFCFC)
                                            .withOpacity(0.46)),
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
                                      color: const Color(0xffFCFCFC)
                                          .withOpacity(0.08),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                          'assets/images/place.png'),
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
                                    style: GoogleFonts.dmSans(
                                        fontSize: 14,
                                        color: const Color(0xffD0D0D0)),
                                  ),
                                  Text(
                                    'Mon 10/13 00:00',
                                    style: GoogleFonts.dmSans(
                                        fontSize: 12,
                                        color: const Color(0xffFCFCFC)
                                            .withOpacity(0.46)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff202329),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                          child: Image.asset('assets/images/starttrip.png')),
                    ),
                    16.heightBox,
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const NavBarWidget(),
      ),
    );
  }
}
