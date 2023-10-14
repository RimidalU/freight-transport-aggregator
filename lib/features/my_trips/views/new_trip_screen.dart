import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../features/features.dart';
import '../../../ui/ui.dart';

class NewTripScreen extends GetView<MyTripController> {
  const NewTripScreen({Key? key}) : super(key: key);

  static const routeName = '/new-trips';

  @override
  Widget build(BuildContext context) {
    Get.put(MyTripController());
    return Padding(
      padding: const EdgeInsets.only(right: 4.0, left: 4.0, bottom: 4.0),
      child: Scaffold(
        appBar: const AppBarWidget(),
        body: SizedBox.expand(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              3.heightBox,
              Container(
                height: 150,
                width: Get.width - 8,
                decoration: BoxDecoration(
                  color: const Color(0xff202329),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Column(
                  children: [
                    const TripDashboardTab(
                      imageLink: 'assets/images/testprof.png',
                      onTapLink: AccountScreen.routeName,
                      title: 'Abdula Azis',
                    ),
                    Container(
                      height: 1,
                      width: Get.width - 45,
                      color: const Color(0xffFCFCFC).withOpacity(0.08),
                    ),
                    const TripInfoTab(
                      trailer: '5263',
                      truck: '5263',
                      vehicle: 'Volvo FMX...',
                      earmed: 1000,
                      earmedTotal: 5000,
                    ),
                  ],
                ),
              ),
              15.heightBox,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => controller.onChangeTripPage(0),
                      child: Obx(() => Text(
                            'Available Trips · ${controller.avaliable.length}',
                            style: GoogleFonts.dmSans(
                                fontSize: 14,
                                color: controller.currentTripPage.value == 0
                                    ? const Color(0xffD0D0D0)
                                    : const Color(0xffFCFCFC)
                                        .withOpacity(0.46)),
                          )),
                    ),
                    15.widthBox,
                    GestureDetector(
                      onTap: () => controller.onChangeTripPage(1),
                      child: Obx(() => Text(
                            'Current Trips · ${controller.active.length}',
                            style: GoogleFonts.dmSans(
                                fontSize: 14,
                                color: controller.currentTripPage.value == 1
                                    ? const Color(0xffD0D0D0)
                                    : const Color(0xffFCFCFC)
                                        .withOpacity(0.46)),
                          )),
                    ),
                    15.widthBox,
                    GestureDetector(
                      onTap: () => controller.onChangeTripPage(2),
                      child: Obx(() => Text(
                            'Closen Trips · ${controller.closed.length}',
                            style: GoogleFonts.dmSans(
                                fontSize: 14,
                                color: controller.currentTripPage.value == 2
                                    ? const Color(0xffD0D0D0)
                                    : const Color(0xffFCFCFC)
                                        .withOpacity(0.46)),
                          )),
                    ),
                  ],
                ),
              ),
              10.heightBox,
              Expanded(
                child: PageView(
                  controller: controller.tripsPage,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: List.generate(
                            controller.avaliable.length,
                            (index) => TripLineItemWidget(
                                  data: controller.avaliable[index],
                                )),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: List.generate(
                            controller.active.length,
                            (index) => TripLineItemWidget(
                                  data: controller.active[index],
                                )),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: List.generate(
                            controller.closed.length,
                            (index) => TripLineItemWidget(
                                  data: controller.closed[index],
                                )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const NavBarWidget(selectedIndex: 1),
      ),
    );
  }
}
