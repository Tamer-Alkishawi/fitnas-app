import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:project_one/widgets/big_google_map.dart';

class CreateAccountTwoController extends GetxController{
  Color buttonColor1 = Colors.transparent;
  Color buttonColor2 = const Color(0xff44515E);
  Color TextAndIconColor1 = Colors.black;
  Color TextAndIconColor2 = Colors.white;
  late GoogleMapController mapController ;
   TextEditingController dateController = TextEditingController();
   LatLng markerLocation = LatLng(24.7134694, 46.6751877);
   List<Marker> markers = <Marker>[];
   double value = 1.0;
   int selectedNumber1 = 60;
   final PageController numberPageController = PageController(
     viewportFraction: 0.2,
     initialPage: 59,
   );
   final double minValue = 0;
   final double maxValue = 200;
   final int tickCount = 200;
   final int linesBetweenNumbers = 5;
   final double smallLineLength = 25.0;
   final PageController pageController = PageController(
     viewportFraction: 1 / 3,
     initialPage: 169,
   );
   int selectedNumber2 = 169;
   final gradient = LinearGradient(
     colors: [
       const Color(0xff44515E),
       const Color(0xff44515E).withOpacity(0.3),
     ],
     begin: Alignment.centerLeft,
     end: Alignment.centerRight,
   );
   final TextStyle selectedTextStyle = const TextStyle(
     fontSize: 32,
     color: Color(0xff44515E),
     fontWeight: FontWeight.bold,
   );
   final TextStyle unselectedTextStyle = const TextStyle(
     fontSize: 16,
     color: Colors.grey,
     fontWeight: FontWeight.normal,
   );

   @override
  void onInit() {
    dateController = TextEditingController();
    markers.add(Marker(
      markerId: const MarkerId('checked-in-marker'),
      position: markerLocation,
    ));
    super.onInit();
  }

  @override
  void dispose() {
     mapController.dispose();
    dateController.dispose();
    numberPageController.dispose();
    pageController.dispose();
    super.dispose();
    super.onInit();
  }

   Future<void> navigateAndDisplaySelection(BuildContext context, LatLng latLng) async {
     final result = await Get.to( BigGoogleMap(latLng: latLng));
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

   Future<void> selectDate(BuildContext context) async {
     final DateTime? picked = await showDatePicker(
       context: context,
       initialDate:
       DateTime.now().subtract(const Duration(days: (18 * 365) + 4)),
       firstDate: DateTime(1900),
       lastDate: DateTime(2100),
     );
     if (picked != null) {
         dateController.text = DateFormat('yyyy-MM-dd').format(picked);
       update();
     }
   }

}