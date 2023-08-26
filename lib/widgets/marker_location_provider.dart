import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MarkerLocationProvider extends ChangeNotifier {
  LatLng _markerLocation = LatLng(24.7134694, 46.6751877);

  LatLng get markerLocation => _markerLocation;

  void setMarkerLocation(LatLng location) {
    _markerLocation = location;
    notifyListeners();
  }
}