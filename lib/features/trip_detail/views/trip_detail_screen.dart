import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../features/features.dart';
import '../../../ui/ui.dart';
import '../../trip_detail_issue_money/widgets/widgets.dart';

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
                    IssueMoneyHeader(
                      order: data.index,
                      trailer: 44,
                      vehicle: 36,
                      isTitle: false,
                    ),
                    Container(
                        height: 1,
                        color: const Color(0xffFCFCFC).withOpacity(0.08)),
                    const CarDashboard(),
                    Container(
                        height: 1,
                        color: const Color(0xffFCFCFC).withOpacity(0.08)),
                    const ProgressBar(progress: 70),
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
