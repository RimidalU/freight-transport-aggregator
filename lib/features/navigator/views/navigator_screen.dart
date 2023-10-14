import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../features/features.dart';
import '../../../ui/ui.dart';

class NavigatorPage extends GetView<NavigatorController> {
  static const routeName = '/navigator';

  const NavigatorPage({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(NavigatorController());
    return SafeArea(
      child: Material(
        child: Stack(
          children: [
            SizedBox(
              height: Get.height * 0.75 - 100,
              child: OSMFlutter(
                controller: controller.mapController,
                osmOption: OSMOption(
                  enableRotationByGesture: false,
                  zoomOption: const ZoomOption(
                    initZoom: 17,
                    minZoomLevel: 3,
                    maxZoomLevel: 19,
                    stepZoom: 1.0,
                  ),
                  userTrackingOption: const UserTrackingOption(
                    enableTracking: true,
                    unFollowUser: true,
                  ),
                  userLocationMarker: UserLocationMaker(
                    personMarker: const MarkerIcon(
                      icon: Icon(Icons.location_history_rounded,
                          color: Colors.blue, size: 64),
                    ),
                    directionArrowMarker: const MarkerIcon(
                      icon: Icon(Icons.double_arrow, size: 48),
                    ),
                  ),
                  roadConfiguration:
                      const RoadOption(roadColor: Colors.yellowAccent),
                  markerOption: MarkerOption(
                      defaultMarker: const MarkerIcon(
                    icon: Icon(Icons.person_pin_circle,
                        color: Colors.blue, size: 56),
                  )),
                ),
              ),
            ),
            GestureDetector(
              onTap: Get.back,
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 25.0, right: 16.0, left: 16.0),
                child: Row(
                  children: [
                    Image.asset('assets/images/back.png', color: Colors.black),
                    3.widthBox,
                    Text('Back',
                        style: GoogleFonts.dmSans(
                            fontSize: 14, color: Colors.black)),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(top: 5),
                decoration: const BoxDecoration(
                    color: Color(0xff202329),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    )),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Trip #${controller.trip.index}',
                            style: darkTheme(context)
                                .primaryTextTheme
                                .headlineMedium,
                          ),
                          Row(
                            children: [
                              Image.asset("assets/images/TruckIcon.png"),
                              4.widthBox,
                              Text(
                                '44',
                                style: darkTheme(context)
                                    .primaryTextTheme
                                    .titleMedium,
                              ),
                              8.widthBox,
                              Image.asset("assets/images/TrailerIcon.png"),
                              4.widthBox,
                              Text(
                                '36',
                                style: darkTheme(context)
                                    .primaryTextTheme
                                    .titleMedium,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                        height: 1,
                        color: const Color(0xffFCFCFC).withOpacity(0.08)),
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
                                      Row(
                                        children: [
                                          Icon(Icons.place,
                                              color: const Color(0xFFFCFCFC)
                                                  .withOpacity(.75),
                                              size: 16),
                                          4.widthBox,
                                          Text(
                                            'Distance',
                                            style: darkTheme(context)
                                                .primaryTextTheme
                                                .titleSmall,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '2260',
                                            style: darkTheme(context)
                                                .primaryTextTheme
                                                .headlineLarge,
                                          ),
                                          Text(
                                            'ml',
                                            style: darkTheme(context)
                                                .primaryTextTheme
                                                .titleLarge,
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
                                      Row(
                                        children: [
                                          Icon(Icons.timer,
                                              color: const Color(0xFFFCFCFC)
                                                  .withOpacity(.75),
                                              size: 16),
                                          4.widthBox,
                                          Text(
                                            'Time',
                                            style: darkTheme(context)
                                                .primaryTextTheme
                                                .titleSmall,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '2',
                                            style: darkTheme(context)
                                                .primaryTextTheme
                                                .headlineLarge,
                                          ),
                                          Text(
                                            'd',
                                            style: darkTheme(context)
                                                .primaryTextTheme
                                                .titleLarge,
                                          ),
                                          const Text(' '),
                                          Text(
                                            '16',
                                            style: darkTheme(context)
                                                .primaryTextTheme
                                                .headlineLarge,
                                          ),
                                          Text(
                                            'h',
                                            style: darkTheme(context)
                                                .primaryTextTheme
                                                .titleLarge,
                                          ),
                                          const Text(' '),
                                          Text(
                                            '23',
                                            style: darkTheme(context)
                                                .primaryTextTheme
                                                .headlineLarge,
                                          ),
                                          Text(
                                            'm',
                                            style: darkTheme(context)
                                                .primaryTextTheme
                                                .titleLarge,
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
                                      Row(
                                        children: [
                                          Icon(Icons.speed,
                                              color: const Color(0xFFFCFCFC)
                                                  .withOpacity(.75),
                                              size: 16),
                                          4.widthBox,
                                          Text(
                                            'Speed',
                                            style: darkTheme(context)
                                                .primaryTextTheme
                                                .titleSmall,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '75.06',
                                            style: darkTheme(context)
                                                .primaryTextTheme
                                                .headlineLarge,
                                          ),
                                          Text(
                                            'mph',
                                            style: darkTheme(context)
                                                .primaryTextTheme
                                                .titleMedium,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.height / 6,
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
                                        ? const Color(0xFF2551EB)
                                        : const Color(0xFF32343A),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.33)),
                                  ),
                                  child: index == 0
                                      ? const Icon(Icons.play_circle,
                                          color: Colors.white, size: 16)
                                      : Icon(Icons.place,
                                          color: const Color(0xFFFCFCFC)
                                              .withOpacity(.46),
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
                                    color: const Color(0xFFFCFCFC)
                                        .withOpacity(.46),
                                    size: 16),
                                8.widthBox,
                                Text(
                                  "54 Radley Street, Off 25",
                                  style: darkTheme(context)
                                      .primaryTextTheme
                                      .headlineLarge,
                                ),
                              ],
                            ),
                            subtitle: Row(
                              children: [
                                24.widthBox,
                                Text(
                                  'Mon 23 Mar.  11:00',
                                  style: darkTheme(context)
                                      .primaryTextTheme
                                      .titleMedium,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ActionButton(
                        onTap: () => controller.onGoClick(),
                        type: 'normal',
                        child: Text(
                          "GO",
                          style: GoogleFonts.dmSans(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
