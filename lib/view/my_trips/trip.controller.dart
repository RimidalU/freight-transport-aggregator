import 'dart:developer';

import 'package:get/get.dart';

class MyTripController extends GetxController {
  MyTripController();

  onTripStartClick(int tripIndex) {
    log(tripIndex.toString());
  }
}
