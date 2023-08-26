import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:project_one/screens/add_location_screen/add_location_controller.dart';
import 'package:project_one/widgets/add_location_container.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddLocationScreen extends StatefulWidget {
  const AddLocationScreen({Key? key}) : super(key: key);

  @override
  State<AddLocationScreen> createState() => _AddLocationScreenState();
}

class _AddLocationScreenState extends State<AddLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddLocationController>(
      init: AddLocationController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.5,
            shadowColor: Color(0xffF8F8F8),
            title: Text(
              AppLocalizations.of(context)!.add_address,
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
          body: Stack(
            children: [
              ListView(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 400),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 31,
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffF8F8F8),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset('images/location_point.svg'),
                              SizedBox(
                                width: 18,
                              ),
                              Expanded(
                                child: Text(
                                  AppLocalizations.of(context)!
                                      .address_screen_location,
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Bahij',
                                    letterSpacing: 0.07,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Container(
                                width: 20.87,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              side: const BorderSide(
                                color: Color(0xff595757),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              activeColor: const Color(0xff8AB23B),
                              value: controller.isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  controller.isChecked = value ?? false;
                                });
                              },
                            ),
                            SizedBox(
                              width: 14,
                            ),
                            Text(
                              AppLocalizations.of(context)!.save_for_later_use,
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff595757),
                                  fontFamily: 'Bahij',
                                  letterSpacing: 0.07),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              side: const BorderSide(
                                color: Color(0xff595757),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              activeColor: const Color(0xff8AB23B),
                              value: controller.isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  controller.isChecked = value ?? false;
                                });
                              },
                            ),
                            SizedBox(
                              width: 14,
                            ),
                            Text(
                              AppLocalizations.of(context)!.set_default_address,
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff595757),
                                  fontFamily: 'Bahij',
                                  letterSpacing: 0.07),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Container(
                          height: 55,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8)),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xff8AB23B),
                            ),
                            onPressed: () {
                              void _showBottomSheet(BuildContext context) {
                                showModalBottomSheet(
                                  backgroundColor: Colors.white,
                                  isScrollControlled: true,
                                  context: context,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                  ),
                                  builder: (BuildContext context) {
                                    return StatefulBuilder(
                                      builder: (BuildContext context,
                                          StateSetter setState) {
                                        return ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            topRight: Radius.circular(30),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                const SizedBox(
                                                  height: 9,
                                                ),
                                                Container(
                                                  width: 90,
                                                  height: 6,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: const Color(
                                                          0xffD9D9D9)),
                                                ),
                                                const SizedBox(
                                                  height: 22,
                                                ),
                                                Text(
                                                  AppLocalizations.of(context)!
                                                      .save_location,
                                                  textAlign: TextAlign.center,
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily: 'Bahij',
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 14,
                                                ),
                                                Divider(
                                                  thickness: 1,
                                                  color: Color.fromRGBO(
                                                      181, 190, 200, 0.32),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Container(
                                                  padding: EdgeInsets.all(20),
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: Color(0xffF8F8F8),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      SvgPicture.asset(
                                                          'images/location_point_two.svg'),
                                                      SizedBox(
                                                        width: 18,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          AppLocalizations.of(
                                                                  context)!
                                                              .address_screen_location,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: const TextStyle(
                                                              fontSize: 14,
                                                              fontFamily:
                                                                  'Bahij',
                                                              letterSpacing:
                                                                  0.07,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: Color(
                                                                  0xff606E7D)),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 50,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 23,
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  child: TextField(
                                                    textAlign: TextAlign.start,
                                                    keyboardType:
                                                        TextInputType.name,
                                                    decoration: InputDecoration(
                                                      filled: true,
                                                      fillColor: const Color(
                                                          0xffF8F8F8),
                                                      hintText:
                                                          AppLocalizations.of(
                                                                  context)!
                                                              .save_location_as,
                                                      hintStyle:
                                                          const TextStyle(
                                                        color:
                                                            Color(0xffB5BEC8),
                                                        fontSize: 14,
                                                        fontFamily: 'Bahij',
                                                        letterSpacing: 0.07,
                                                      ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        borderSide:
                                                            const BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                        ),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        borderSide:
                                                            const BorderSide(
                                                          color: Colors.red,
                                                        ),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                          color: Colors.red,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                        vertical: 16,
                                                        horizontal: 15,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      AppLocalizations.of(
                                                              context)!
                                                          .set_address_icon,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: 'Bahij',
                                                        letterSpacing: 0.07,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 14,
                                                ),
                                                Container(
                                                  height: 50,
                                                  child: ListView.builder(
                                                      physics:
                                                          NeverScrollableScrollPhysics(),
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      shrinkWrap: true,
                                                      itemCount: controller
                                                          .addLocationMenu(
                                                              context)
                                                          .length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            AddLocationContainer(
                                                                svgUrl1: controller
                                                                    .addLocationMenu(context)[
                                                                        index]
                                                                    .svgUrl1,
                                                                svgUrl2: controller
                                                                    .addLocationMenu(context)[
                                                                        index]
                                                                    .svgUrl2,
                                                                title: controller
                                                                    .addLocationMenu(context)[
                                                                        index]
                                                                    .title,
                                                                isActive: controller
                                                                    .addLocationMenu(
                                                                        context)[index]
                                                                    .isActive,
                                                                onTap: () {
                                                                  controller
                                                                      .addLocationMenu(
                                                                          context)[index]
                                                                      .onTap();
                                                                  setState(
                                                                      () {});
                                                                }),
                                                            SizedBox(
                                                              width: 8,
                                                            )
                                                          ],
                                                        );
                                                      }),
                                                ),
                                                SizedBox(
                                                  height: 44,
                                                ),
                                                Container(
                                                  height: 55,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          height: 55,
                                                          child: ElevatedButton(
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              primary:
                                                                  const Color(
                                                                      0xff8AB23B),
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8),
                                                              ),
                                                            ),
                                                            onPressed: () {},
                                                            child: Text(
                                                              AppLocalizations.of(
                                                                      context)!
                                                                  .save,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style:
                                                                  const TextStyle(
                                                                fontSize: 14,
                                                                fontFamily:
                                                                    'Bahij',
                                                                color: Colors
                                                                    .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                letterSpacing:
                                                                    0.07,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          height: 55,
                                                          child: ElevatedButton(
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              primary: Color(
                                                                  0xffF8F8F8),
                                                              elevation: 0,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8),
                                                              ),
                                                            ),
                                                            onPressed: () {},
                                                            child: Text(
                                                              AppLocalizations.of(
                                                                      context)!
                                                                  .cancel,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: const TextStyle(
                                                                  fontSize: 14,
                                                                  fontFamily:
                                                                      'Bahij',
                                                                  color: Color(
                                                                      0xff44515E),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  letterSpacing:
                                                                      0.07),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 27,
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                );
                              }

                              setState(() {
                                _showBottomSheet(context);
                              });
                            },
                            child: Container(
                              child: Text(
                                AppLocalizations.of(context)!
                                    .location_confirmation,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Bahij',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    width: double.infinity,
                    height: 400,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: GoogleMap(
                        initialCameraPosition: CameraPosition(
                          target: controller.markerLocation,
                          zoom: 17,
                        ),
                        onMapCreated: (GoogleMapController _controller) {
                          controller.mapController = _controller;
                        },
                        markers: Set<Marker>.of(controller.markers),
                        onTap: (LatLng latLng) {
                          controller.checkInLocation(latLng);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
