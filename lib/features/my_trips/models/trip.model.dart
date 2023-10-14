enum TripStatus {
  avaliable,
  active,
  closed,
}

class TripModel {
  final int index;
  final TripStatus status;

  TripModel({required this.index, required this.status});
}
