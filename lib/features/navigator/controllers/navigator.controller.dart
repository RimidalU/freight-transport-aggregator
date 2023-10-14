import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:get/get.dart';

import '../../my_trips/models/trip.model.dart';

class NavigatorController extends GetxController {
  late TripModel trip;
  MapController mapController = MapController(
    initPosition: GeoPoint(latitude: 47.4358055, longitude: 8.4737324),
  );

  @override
  void onInit() {
    super.onInit();
    trip = Get.arguments as TripModel;
  }

  @override
  void onClose() {
    mapController.dispose();
    super.onClose();
  }

  onGoClick() {}
}
