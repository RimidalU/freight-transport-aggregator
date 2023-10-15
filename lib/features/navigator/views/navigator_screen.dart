import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../features/features.dart';
import '../../../ui/ui.dart';
import '../widgets/widgets.dart';

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
                    const NavigatorInfoItemSet(
                      distance: 2260,
                      speed: 76.06,
                      time: Duration(
                        days: 2,
                        hours: 16,
                        minutes: 23,
                      ),
                    ),
                    SizedBox(
                      height: Get.height / 6,
                      child: ListView(
                        itemExtent: 56,
                        children: List.generate(
                            pins.length,
                            (index) => NavigatorItem(
                                  index: index,
                                  date: pins[index]['date'] as DateTime,
                                  name: pins[index]['name'] as String,
                                )),
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

final pins = [
  {
    'name': '54 Radley Street, Off 25',
    'date': DateTime.now().add(
      const Duration(days: -10),
    )
  },
  {
    'name': '54 Radley Street, Off 25',
    'date': DateTime.now().add(
      const Duration(days: -32),
    )
  },
  {
    'name': '54 Radley Street, Off 25',
    'date': DateTime.now().add(
      const Duration(days: -11),
    )
  },
  {
    'name': '54 Radley Street, Off 25',
    'date': DateTime.now().add(
      const Duration(days: -33),
    )
  },
];
