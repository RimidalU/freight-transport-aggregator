import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled55/view/my_trips/trip.model.dart';

class MyTripController extends GetxController {
  PageController tripsPage = PageController();
  RxInt currentTripPage = 0.obs;

  List<TripModel> avaliable = List.generate(
    5,
    (index) => TripModel(index: index + 1, status: TripStatus.avaliable),
  );

  List<TripModel> active = List.generate(
    1,
    (index) => TripModel(index: index + 1, status: TripStatus.active),
  );
  List<TripModel> closed = List.generate(
    10,
    (index) => TripModel(index: index + 1, status: TripStatus.closed),
  );

  MyTripController();

  onTripClick(TripModel trip) {}

  onChangeTripPage(int index) {
    tripsPage.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.linear);
    currentTripPage.value = index;
  }
}
