import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:project_one/models/add_location_menu.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../widgets/big_google_map_two.dart';

class AddLocationController extends GetxController{

  late GoogleMapController mapController;
  bool isChecked = false;
  int selected = 0;
  LatLng markerLocation = LatLng(24.7134694, 46.6751877);
  List<Marker> markers = <Marker>[];

  List<AddLocationMenuModel> addLocationMenu(BuildContext context){
    List<AddLocationMenuModel> addLocationMenuList = [
      new AddLocationMenuModel( 'images/house2.svg',
           'images/house2_gray.svg',
           AppLocalizations.of(context)!.house,
           selected == 0,
           (){
              selected = 0 ;
            update();
          }),
      new AddLocationMenuModel(
          'images/bag2_green.svg',
          'images/bag.svg',
           AppLocalizations.of(context)!.work,
           selected == 1,
           (){
              selected = 1 ;
            update();
          }),
      new AddLocationMenuModel(
          'images/three_dots2.svg',
          'images/three_dots.svg',
           AppLocalizations.of(context)!.other,
           selected == 2,
           (){
              selected = 2 ;
            update();
          })

    ];
    return addLocationMenuList;
  }


  void checkInLocation(LatLng location) {
      markers.clear();
      markers.add(
        Marker(
          markerId: const MarkerId('checked-in-marker'),
          position: location,
        ),
      );
    update();
  }

  Future<void> navigateAndDisplaySelection(BuildContext context, LatLng latLng) async {
    final result = await Get.to(BigGoogleMapTwo(latLng: latLng));
    print('result : $result');

      markerLocation = result;
      mapController.animateCamera(CameraUpdate.newLatLngZoom(
          LatLng(markerLocation.latitude, markerLocation.longitude), 14));
      markers.clear();
    markers.add(Marker(
          markerId: MarkerId('SomeId'),
          position:
          LatLng(markerLocation.latitude, markerLocation.longitude),
          infoWindow: InfoWindow(title: 'The title of the marker')));
   update();
  }

  @override
  void onInit() {
    markers.add(Marker(
      markerId: const MarkerId('checked-in-marker'),
      position: markerLocation,
    ));
    super.onInit();
  }
  @override
  void dispose() {
    mapController.dispose();
    super.dispose();
    super.onInit();
  }


}