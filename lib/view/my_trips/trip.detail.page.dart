import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled55/components/app_bar_widget.dart';
import 'package:untitled55/view/my_trips/trip.controller.dart';
import 'package:untitled55/view/my_trips/trip.model.dart';

class TripDetailsPage extends GetView<MyTripController> {
  final TripModel data;
  const TripDetailsPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0, left: 4.0, bottom: 4.0),
      child: Scaffold(
        backgroundColor: const Color(0xff121418),
        appBar: const AppBarWidget(),
        body: SizedBox.expand(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 5, bottom: 5),
                decoration: BoxDecoration(color: const Color(0xff202329), borderRadius: BorderRadius.circular(17)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
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
                    ),
                    Container(height: 1, color: const Color(0xffFCFCFC).withOpacity(0.08)),
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
                    Container(height: 1, color: const Color(0xffFCFCFC).withOpacity(0.08)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Trips progress',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '70%',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      color: const Color(0xFFD0D0D0),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              4.widthBox,
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '/',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(
                                      color: const Color(0x75FCFCFC),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: -0.05,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 4),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '100%',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 12, fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(16, 10, 16, 20),
                      child: LinearProgressIndicator(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        minHeight: 12,
                        backgroundColor: Color(0x14fcfcfc),
                        color: Color(0xFF2551EB),
                        value: 0.7,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 2, bottom: 2),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(color: const Color(0xff202329), borderRadius: BorderRadius.circular(17)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () => controller.onChangeTripDetailsPage(0),
                            child: Obx(() => Text(
                                  'Tracking',
                                  style: GoogleFonts.dmSans(
                                      fontSize: 14,
                                      color: controller.currentTripDetailsPage.value == 0
                                          ? const Color(0xffD0D0D0)
                                          : const Color(0xffFCFCFC).withOpacity(0.46)),
                                )),
                          ),
                          15.widthBox,
                          GestureDetector(
                            onTap: () => controller.onChangeTripDetailsPage(1),
                            child: Obx(() => Text(
                                  'Issue Money Code',
                                  style: GoogleFonts.dmSans(
                                      fontSize: 14,
                                      color: controller.currentTripDetailsPage.value == 1
                                          ? const Color(0xffD0D0D0)
                                          : const Color(0xffFCFCFC).withOpacity(0.46)),
                                )),
                          ),
                        ],
                      ),
                      10.heightBox,
                      Expanded(
                        child: PageView(
                          controller: controller.tripsDetailsPage,
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            Column(
                              children: [
                                20.heightBox,
                                Container(
                                  width: 335,
                                  height: 28,
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                                  decoration: ShapeDecoration(
                                    color: const Color(0x14D7BD32),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Pick Up',
                                        style: GoogleFonts.dmSans(color: const Color(0xFFD7BC31), fontSize: 14, fontWeight: FontWeight.w400),
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
                                          mainAxisAlignment: index != 14 ? MainAxisAlignment.end : MainAxisAlignment.start,
                                          children: [
                                            if (index != 0) Container(width: 3, height: 12, color: const Color(0xFF32343A)),
                                            Container(
                                              width: 32,
                                              height: 32,
                                              decoration: ShapeDecoration(
                                                color: index == 0 ? const Color(0xFFFB923C) : const Color(0xFF32343A),
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.33)),
                                              ),
                                              child: index == 0
                                                  ? const Padding(
                                                      padding: EdgeInsets.all(8.0),
                                                      child: CircularProgressIndicator(
                                                        strokeWidth: 2,
                                                        valueColor: AlwaysStoppedAnimation(Colors.white),
                                                      ),
                                                    )
                                                  : Icon(Icons.place, color: const Color(0xFFFCFCFC).withOpacity(.46), size: 16),
                                            ),
                                            if (index != 14) Container(width: 3, height: 12, color: const Color(0xFF32343A)),
                                          ],
                                        ),
                                        title: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Icon(Icons.check, color: const Color(0xFFFCFCFC).withOpacity(.46), size: 16),
                                            8.widthBox,
                                            Text("54 Radley Street, Off 25",
                                                style: GoogleFonts.dmSans(color: const Color(0xFFD0D0D0), fontSize: 16, fontWeight: FontWeight.w400)),
                                          ],
                                        ),
                                        subtitle: Row(
                                          children: [
                                            24.widthBox,
                                            Text('Mon 23 Mar.  11:00',
                                                style: GoogleFonts.dmSans(color: const Color(0x75FCFCFC), fontSize: 14, fontWeight: FontWeight.w400)),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 335,
                                  height: 44,
                                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    gradient: const LinearGradient(
                                      begin: Alignment(1.00, -0.02),
                                      end: Alignment(-1, 0.02),
                                      colors: [Color(0xFF2550EB), Color(0xFF2897FF)],
                                    ),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Check In',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.dmSans(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SingleChildScrollView(
                              child: Column(
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
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
