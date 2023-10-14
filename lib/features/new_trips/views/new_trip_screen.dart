import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../ui/ui.dart';
import '../../features.dart';

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
            children: <Widget>[
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
              TripStatesMenu(
                selectedIndex: controller.currentTripPage.value,
                availableCount: Obx(
                  () => TripStatesMenuItem(
                    title: 'Available Trips',
                    count: controller.avaliable.length,
                    isActive: controller.currentTripPage.value == 0,
                  ),
                ),
                onTapAvailable: () => controller.onChangeTripPage(0),
                currentCount: Obx(
                  () => TripStatesMenuItem(
                    title: 'Current Trips',
                    count: controller.active.length,
                    isActive: controller.currentTripPage.value == 1,
                  ),
                ),
                onTapCurrent: () => controller.onChangeTripPage(1),
                closesCount: Obx(
                  () => TripStatesMenuItem(
                    title: 'Closen Trips',
                    count: controller.closed.length,
                    isActive: controller.currentTripPage.value == 2,
                  ),
                ),
                onTapCloses: () => controller.onChangeTripPage(2),
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
