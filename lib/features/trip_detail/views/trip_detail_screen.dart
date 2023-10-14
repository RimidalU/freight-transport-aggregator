import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../features/features.dart';
import '../../../ui/ui.dart';

class TripDetailsScreen extends GetView<MyTripController> {
  // final TripModel data;

  static const routeName = '/trip-detail';

  const TripDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TripModel data =
        ModalRoute.of(context)?.settings.arguments as TripModel;

    return Padding(
      padding: const EdgeInsets.only(right: 4.0, left: 4.0, bottom: 4.0),
      child: Scaffold(
        appBar: AppBarWidget(
          actions: [
            8.widthBox,
            IconButtonGrey(
              onTap: () => controller.openNavigatorFor(data),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/map.png'),
                  4.widthBox,
                  Text(
                    'Open map',
                    style: GoogleFonts.inter(
                        color: const Color(0xFFD0D0D0),
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: SizedBox.expand(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 5, bottom: 5),
                decoration: BoxDecoration(
                    color: const Color(0xff202329),
                    borderRadius: BorderRadius.circular(17)),
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
                            style: darkTheme(context)
                                .primaryTextTheme
                                .headlineMedium,
                          ),
                          16.widthBox,
                          Image.asset("assets/images/TruckIcon.png"),
                          4.widthBox,
                          Text(
                            '44',
                            style:
                                darkTheme(context).primaryTextTheme.titleMedium,
                          ),
                          8.widthBox,
                          Image.asset("assets/images/TrailerIcon.png"),
                          4.widthBox,
                          Text(
                            '36',
                            style:
                                darkTheme(context).primaryTextTheme.titleMedium,
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
                                      Text(
                                        'Distance',
                                        style: darkTheme(context)
                                            .primaryTextTheme
                                            .titleSmall,
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
                                      Text(
                                        'Money',
                                        style: darkTheme(context)
                                            .primaryTextTheme
                                            .titleSmall,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '\$',
                                            style: darkTheme(context)
                                                .primaryTextTheme
                                                .titleLarge,
                                          ),
                                          Text(
                                            '500',
                                            style: darkTheme(context)
                                                .primaryTextTheme
                                                .headlineLarge,
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
                                    style: darkTheme(context)
                                        .primaryTextTheme
                                        .titleSmall,
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
                        color: const Color(0xffFCFCFC).withOpacity(0.08)),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
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
                                style: darkTheme(context)
                                    .primaryTextTheme
                                    .headlineMedium,
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
                                        fontWeight: FontWeight.w500),
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
                                        letterSpacing: -0.05),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '100%',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.dmSans(
                                            color: const Color(0x75FCFCFC),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 2),
                      decoration: const BoxDecoration(
                        color: Color(0xff1C1F24),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(17),
                            topRight: Radius.circular(17)),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () =>
                                      controller.onChangeTripDetailsPage(0),
                                  child: Obx(
                                    () => Text(
                                      'Tracking',
                                      style: controller.currentTripDetailsPage
                                                  .value ==
                                              0
                                          ? darkTheme(context)
                                              .primaryTextTheme
                                              .headlineMedium
                                          : darkTheme(context)
                                              .primaryTextTheme
                                              .titleMedium,
                                    ),
                                  ),
                                ),
                                15.widthBox,
                                GestureDetector(
                                  onTap: () =>
                                      controller.onChangeTripDetailsPage(1),
                                  child: Obx(
                                    () => Text(
                                      'Issue Money Code',
                                      style: controller.currentTripDetailsPage
                                                  .value ==
                                              1
                                          ? darkTheme(context)
                                              .primaryTextTheme
                                              .headlineMedium
                                          : darkTheme(context)
                                              .primaryTextTheme
                                              .titleMedium,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          12.heightBox,
                          Container(
                              height: 1,
                              color: const Color(0xffFCFCFC).withOpacity(0.08)),
                        ],
                      ),
                    ),
                    Expanded(
                      child: PageView(
                        controller: controller.tripsDetailsPage,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          TripDetailTrackingScreen(trip: data),
                          TripDetailIssueMoneyScreen(data: data),
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
    );
  }
}
