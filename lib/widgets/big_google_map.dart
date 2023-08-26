import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class BigGoogleMap extends StatefulWidget {
  BigGoogleMap({Key? key, required this.latLng}) : super(key: key);
  LatLng latLng;

  @override
  State<BigGoogleMap> createState() => _BigGoogleMapState();
}

class _BigGoogleMapState extends State<BigGoogleMap> {
  late GoogleMapController mapController;
  Set<Marker> _markers = {};
  late LatLng lng;


  void _checkInLocation(LatLng location) {
    setState(() {
      _markers.clear();
      _markers.add(
        Marker(
          markerId: const MarkerId('checked-in-marker'),
          position: location,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: GoogleMap(
        onMapCreated: (GoogleMapController controller) {
          mapController = controller;
        },
        initialCameraPosition: CameraPosition(
          target: widget.latLng,
          zoom: 15,
        ),
        onTap: (LatLng latLng) {
          _checkInLocation(latLng);
        },
        markers: _markers,
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: FloatingActionButton(
            onPressed: () {
              LatLng markerLocation =
              _markers.isNotEmpty ? _markers.first.position : const LatLng(0,0);
              Get.back(result: markerLocation);
            },
            child: const Icon(Icons.check),
          ),
        ),
      ),
    );
  }
}
