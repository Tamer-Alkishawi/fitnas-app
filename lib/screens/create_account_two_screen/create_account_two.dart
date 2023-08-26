import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:project_one/screens/bottom_navigation_screen/bottom_navigation_screen.dart';
import 'package:project_one/screens/create_account_two_screen/create_account_two_controller.dart';
import 'package:project_one/widgets/big_google_map.dart';
import '../../widgets/slider_container.dart';

class CreateAccountTwo extends StatefulWidget {
  CreateAccountTwo({Key? key}) : super(key: key);

  @override
  State<CreateAccountTwo> createState() => _CreateAccountTwoState();
}

class _CreateAccountTwoState extends State<CreateAccountTwo> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateAccountTwoController>(
      init: CreateAccountTwoController(),
      builder: (controller) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.5,
            shadowColor: const Color(0xffF8F8F8),
            title: Text(
              AppLocalizations.of(context)!.complete_creating_account,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontFamily: 'Bahij',
                fontWeight: FontWeight.w600,
              ),
            ),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 22,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: ListView(
              children: [
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.current_location,
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Bahij',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.07,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 262,
                  decoration: BoxDecoration(
                    color: const Color(0xffF8F8F8),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.only(
                      top: 10, left: 10, right: 10, bottom: 16),
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 175,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: GoogleMap(
                            mapType: MapType.normal,
                            onMapCreated: (GoogleMapController _controller) {
                              controller.mapController = _controller;
                              // LatLng markerPosition = _markerLocation;
                              CameraUpdate.newCameraPosition(
                                CameraPosition(
                                    target: controller.markerLocation, zoom: 17),
                              );
                            },
                            initialCameraPosition: CameraPosition(
                              target: controller.markerLocation,
                              zoom: 17,
                            ),
                            markers: Set<Marker>.of(controller.markers),
                            //markers:,
                            zoomControlsEnabled: false,
                            onTap: (LatLng latLng) {
                              controller.navigateAndDisplaySelection(context, latLng);
                            },
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        bottom: 0,
                        right: 0,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                AppLocalizations.of(context)!.location,
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Bahij',
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.07,
                                    color: Color(0xff606E7D)),
                              ),
                            ),
                            const SizedBox(
                              width: 125,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 6),
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Color(0xff595757),
                                size: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.gender,
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Bahij',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.07,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    color: const Color(0xffF8F8F8),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              controller.buttonColor1 = Colors.transparent;
                              controller.buttonColor2 = const Color(0xff44515E);
                              controller.TextAndIconColor2 = Colors.white;
                              controller.TextAndIconColor1 = Colors.black;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              primary: controller.buttonColor2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(23),
                              ),
                              elevation: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male_outlined,
                                color: controller.TextAndIconColor2,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                AppLocalizations.of(context)!.male,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Bahij',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.07,
                                  color: controller.TextAndIconColor2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              controller.buttonColor1 = const Color(0xff44515E);
                              controller.buttonColor2 = Colors.transparent;
                              controller.TextAndIconColor1 = Colors.white;
                              controller.TextAndIconColor2 = Colors.black;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: controller.buttonColor1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(23),
                            ),
                            elevation: 0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female_outlined,
                                color: controller.TextAndIconColor1,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                AppLocalizations.of(context)!.female,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Bahij',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.07,
                                  color: controller.TextAndIconColor1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.date_of_birth,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Bahij',
                          color: Colors.black,
                          letterSpacing: 0.07),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  textAlign: TextAlign.start,
                  controller: controller.dateController,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.calendar_month_outlined,
                        size: 20,
                        color: Color(0xff595757),
                      ),
                      onPressed: () {
                        controller.selectDate(context);
                      },
                    ),
                    filled: true,
                    fillColor: const Color(0xffF8F8F8),
                    hintText: AppLocalizations.of(context)!
                        .please_enter_your_birth_date,
                    hintStyle: const TextStyle(
                        color: Color(0xffA1A1A1),
                        fontSize: 12,
                        fontFamily: 'Bahij',
                        letterSpacing: 0.07),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 15,
                    ),
                  ),
                  readOnly: true,
                ),
                const SizedBox(
                  height: 32,
                ),
                Column(
                  children: [
                    SliderContainer(
                      title: AppLocalizations.of(context)!.height,
                      ButtonTitle: AppLocalizations.of(context)!.centimeters,
                      value: controller.value,
                      showDescription: true,
                    ),
                    Container(
                      height: 80,
                      child: PageView.builder(
                        controller: controller.pageController,
                        itemCount: controller.tickCount,
                        onPageChanged: (int index) {
                          setState(() {
                            controller.selectedNumber2 = index;
                          });
                        },
                        itemBuilder: (context, index) {
                          final value = controller.minValue +
                              (controller.maxValue - controller.minValue) * (index / (controller.tickCount - 1));
                          List<Widget> lines = [];
                          for (int i = 0; i < controller.linesBetweenNumbers; i++) {
                            lines.add(
                              Container(
                                width: 1,
                                // Width of small lines
                                height: controller.smallLineLength,
                                // Length of small lines
                                color: Colors.black,
                              ),
                            );
                            if (i < controller.linesBetweenNumbers - 1) {}
                          }
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                controller.selectedNumber2 = index;
                                controller.pageController.animateToPage(
                                  index,
                                  duration: const Duration(milliseconds: 20),
                                  curve: Curves.easeInOut,
                                );
                              });
                            },
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: lines,
                                ),
                                Container(
                                  width: 1, // Increased line width
                                  height: 20,
                                  color: Colors.black,
                                ),
                                Text(
                                  value.toStringAsFixed(0),
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: index == controller.selectedNumber2
                                        ? Colors.black
                                        : Colors.grey,
                                    fontWeight: index == controller.selectedNumber2
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Column(
                  children: [
                    SliderContainer(
                      title: AppLocalizations.of(context)!.weight,
                      ButtonTitle: AppLocalizations.of(context)!.kilogram,
                      value: controller.value,
                      showDescription: true,
                    ),
                    Center(
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        child: ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return controller.gradient.createShader(bounds);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            child: PageView.builder(
                              controller: controller.numberPageController,
                              scrollDirection: Axis.horizontal,
                              itemCount: 100,
                              onPageChanged: (int page) {
                                setState(() {
                                  controller.selectedNumber1 = page + 1;
                                });
                              },
                              itemBuilder: (BuildContext context, int index) {
                                final number = index + 1;

                                return Row(
                                  children: [
                                    Expanded(
                                      child: AnimatedContainer(
                                        alignment: Alignment.center,
                                        duration:
                                            const Duration(milliseconds: 1000),
                                        child: Text(
                                          number.toString(),
                                          style: number == controller.selectedNumber1
                                              ? controller.selectedTextStyle
                                              : controller.unselectedTextStyle,
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Image(image: AssetImage('images/Polygon 2.png'))
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 88,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff000000).withOpacity(0.08),
                          spreadRadius: 0,
                          blurRadius: 50,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Center(
                      child: Container(
                        height: 55,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xff8AB23B),
                          ),
                          onPressed: () {
                            Get.to(BottomNavigationScreen());
                          },
                          child: Container(
                            child: Text(
                              AppLocalizations.of(context)!.create_account,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Bahij',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
