import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled55/features/my_trips/trip.model.dart';

import '../features.dart';

class MyTripController extends GetxController {
  PageController tripsPage = PageController();
  PageController tripsDetailsPage = PageController();
  RxInt currentTripPage = 0.obs;
  RxInt currentTripDetailsPage = 0.obs;

  List<TripModel> avaliable = List.generate(
      5, (index) => TripModel(index: index + 1, status: TripStatus.avaliable));
  List<TripModel> active = List.generate(
      3, (index) => TripModel(index: index + 1, status: TripStatus.active));
  List<TripModel> closed = List.generate(
      10, (index) => TripModel(index: index + 1, status: TripStatus.closed));

  onTripClick(TripModel trip) {
    if (trip.status == TripStatus.active) {
      Navigator.of(Get.context!).push(MaterialPageRoute(
          builder: (context) => TripDetailsScreen(data: trip)));
    }
  }

  onChangeTripPage(int index) {
    tripsPage.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.linear);
    currentTripPage.value = index;
  }

  onChangeTripDetailsPage(int index) {
    tripsDetailsPage.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.linear);
    currentTripDetailsPage.value = index;
  }

  openNavigatorFor(TripModel data) {
    Get.toNamed("/navigator", arguments: data);
  }

  void onTripCheckinTap(TripModel data) {
    //Get.toNamed("/tripCheckin", arguments: data);
  }
}
