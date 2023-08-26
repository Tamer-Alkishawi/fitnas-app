import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:project_one/api/api_models/main_response.dart';
import 'package:project_one/api/controllers/home_api_controller.dart';
import 'package:project_one/screens/home_screen/home_controller.dart';
import 'package:project_one/screens/packages_screen/packages_screen.dart';
import 'package:project_one/screens/resturents_screen/resturents_screen.dart';
import 'package:project_one/widgets/packages_container.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../widgets/resturent.dart';
import '../../widgets/silver_coach_package.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _activeIndex = 0;
  late List<Advertisement> advertisements = []; // Replace with your data model
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('https://fitnass.brandtechnical.tech/public/api/home?lat=25&long=30'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      advertisements = List<Advertisement>.from(
        data['data']['Advertisements'].map((x) => Advertisement.fromJson(x)),
      );
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 57),
                    child: ListView(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Image(
                                        image: AssetImage(
                                            'images/profile picture.png')),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              AppLocalizations.of(context)!
                                                  .hello,
                                              textAlign: TextAlign.right,
                                              style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'Bahij',
                                                letterSpacing: 0.07,
                                                color: Colors.black,
                                              ),
                                            ),
                                            const Text(
                                              "👋",
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'Bahij',
                                                letterSpacing: 0.07,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          AppLocalizations.of(context)!
                                              .salah_khatab,
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Bahij',
                                            letterSpacing: 0.07,
                                            color: Color(0xff595757),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset('images/search.svg'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset('images/location1.svg'),
                            const SizedBox(
                              width: 7,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      AppLocalizations.of(context)!.delivery_to,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Bahij',
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Icon(
                                      Icons.keyboard_arrow_down_outlined,
                                      color: Color(0xff8AB23B),
                                      size: 20,
                                    ),
                                  ],
                                ),
                                Text(
                                  AppLocalizations.of(context)!.home_location,
                                  textAlign: TextAlign.right,
                                  style: const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Bahij',
                                    letterSpacing: 0.07,
                                    color: Color(0xff595757),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        // SizedBox(
                        //   height: 170,
                        //   child: CarouselSlider(
                        //     options: CarouselOptions(
                        //       viewportFraction: 1,
                        //       initialPage: 0,
                        //       pauseAutoPlayOnTouch: true,
                        //       autoPlay: true,
                        //       autoPlayInterval: const Duration(seconds: 3),
                        //       autoPlayAnimationDuration:
                        //       const Duration(milliseconds: 800),
                        //       autoPlayCurve: Curves.decelerate,
                        //       enlargeCenterPage: true,
                        //       padEnds: false,
                        //     ),
                        //
                        //     items: controller.sliderImageMenuList!,
                        //   ),
                        // ),
                    //************************************************************
                        // SizedBox(
                        //   height: 170,
                        //   child: FutureBuilder<Data>(
                        //     future: HomeApiController().getHome(),
                        //     builder: (context, snapshot) {
                        //       if (snapshot.connectionState ==
                        //           ConnectionState.waiting) {
                        //         print('Tamer1');
                        //         return Center(
                        //           child: CircularProgressIndicator(),
                        //         );
                        //
                        //       } else if(snapshot.hasError){
                        //         return Text('Erorr ${snapshot.error}');
                        //       }
                        //       else if (snapshot.hasData && snapshot.data!.advertisements.isNotEmpty) {
                        //         print('Tamer2');
                        //         return ListView.builder(
                        //             scrollDirection: Axis.horizontal,
                        //             shrinkWrap: true,
                        //             itemCount:
                        //                 snapshot.data!.advertisements.length,
                        //             itemBuilder: (context, index) {
                        //               return Image.network(snapshot.data!.advertisements[index].image);
                        //             });
                        //       } else {
                        //         return Center(child: Text('No Data'));
                        //       }
                        //     },
                        //   ),
                        // ),
                        SizedBox(
                          height: 170,
                          width: double.infinity,
                          child: isLoading? Center(child: CircularProgressIndicator()):
                          ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: advertisements.length,
                            itemBuilder: (context, index) {
                              return Image.network(advertisements[index].image);
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              AppLocalizations.of(context)!.categories,
                              textAlign: TextAlign.right,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Bahij',
                                color: Colors.black,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(PackagesScreen());
                              },
                              child: Container(
                                height: 16,
                                child: Row(
                                  children: [
                                    Text(
                                      AppLocalizations.of(context)!.show_more,
                                      style: const TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Bahij',
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Icon(
                                      Icons.arrow_forward_rounded,
                                      size: 15,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                            height: 91,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                PackagesContainer(
                                  imageUrl: 'images/all_packages.png',
                                  text1: AppLocalizations.of(context)!.all,
                                  text2: AppLocalizations.of(context)!
                                      .the_packages,
                                  borderColor: const Color(0xffF4F4F4),
                                  icon: false,
                                  isActive: _activeIndex == 0,
                                  onTap: () {
                                    setState(() {
                                      _activeIndex = 0;
                                    });
                                  },
                                ),
                                PackagesContainer(
                                  imageUrl: 'images/daily_packages.png',
                                  text1: AppLocalizations.of(context)!.packages,
                                  text2: AppLocalizations.of(context)!.daily,
                                  borderColor: const Color(0xffF4F4F4),
                                  icon: false,
                                  isActive: _activeIndex == 1,
                                  onTap: () {
                                    setState(() {
                                      _activeIndex = 1;
                                    });
                                  },
                                ),
                                PackagesContainer(
                                  imageUrl: 'images/weekly_packages.png',
                                  text1: AppLocalizations.of(context)!.packages,
                                  text2: AppLocalizations.of(context)!.weekly,
                                  borderColor: const Color(0xffF4F4F4),
                                  icon: false,
                                  isActive: _activeIndex == 2,
                                  onTap: () {
                                    setState(() {
                                      _activeIndex = 2;
                                    });
                                  },
                                ),
                                PackagesContainer(
                                  imageUrl: 'images/monthly_packages.png',
                                  text1: AppLocalizations.of(context)!.packages,
                                  text2: AppLocalizations.of(context)!.monthly,
                                  borderColor: const Color(0xffF4F4F4),
                                  icon: true,
                                  isActive: _activeIndex == 3,
                                  onTap: () {
                                    setState(() {
                                      _activeIndex = 3;
                                    });
                                  },
                                ),
                              ],
                            )),
                        const SizedBox(
                          height: 22,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              AppLocalizations.of(context)!.restaurants,
                              textAlign: TextAlign.right,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Bahij',
                                color: Colors.black,
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Get.to(ResturentsScreen()),
                              child: Container(
                                height: 16,
                                child: Row(
                                  children: [
                                    Text(
                                      AppLocalizations.of(context)!.show_more,
                                      style: const TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Bahij',
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Icon(
                                      Icons.arrow_forward_rounded,
                                      size: 15,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 194,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: controller.resturentsMenu(context).length,
                            itemBuilder: (context, index) {
                              return Resturent(
                                  imageUrl: controller
                                      .resturentsMenu(context)[index]
                                      .imageUrl!,
                                  resturentName: controller
                                      .resturentsMenu(context)[index]
                                      .resturentName!,
                                  description: controller
                                      .resturentsMenu(context)[index]
                                      .description!,
                                  address: controller
                                      .resturentsMenu(context)[index]
                                      .address!);
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 45,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              primary: const Color(0xff8AB23B),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100)),
                            ),
                            onPressed: () {
                              void _showBottomSheet(BuildContext context) {
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  context: context,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(24),
                                      topRight: Radius.circular(24),
                                    ),
                                  ),
                                  builder: (BuildContext context) {
                                    return ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(24),
                                        topRight: Radius.circular(24),
                                      ),
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
                                                  BorderRadius.circular(20),
                                              color: const Color(0xffD9D9D9),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 16,
                                          ),
                                          Text(
                                            AppLocalizations.of(context)!
                                                .daily_packages,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Bahij',
                                              letterSpacing: 0.07,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 35,
                                          ),
                                          Divider(
                                            thickness: 1,
                                            color: Color.fromRGBO(
                                                181, 190, 200, 0.32),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset('images/face.png'),
                                              const SizedBox(
                                                width: 9,
                                              ),
                                              Text(
                                                AppLocalizations.of(context)!
                                                    .enjoy_the_experience,
                                                textAlign: TextAlign.center,
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'Bahij',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16),
                                            child: Text(
                                              AppLocalizations.of(context)!
                                                  .bottom_sheet_hint,
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Bahij',
                                                color: Color(0xff595757),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 18,
                                          ),
                                          ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            shrinkWrap: true,
                                            itemCount: controller
                                                .silverPackageMenu(context)
                                                .length,
                                            itemBuilder: (context, index) {
                                              return SilverCoachPackageTwoContainer(
                                                imageUrl1: controller
                                                    .silverPackageMenu(
                                                        context)[index]
                                                    .imageUrl1!,
                                                imageUrl2: controller
                                                    .silverPackageMenu(
                                                        context)[index]
                                                    .imageUrl2!,
                                                hint: controller
                                                    .silverPackageMenu(
                                                        context)[index]
                                                    .hint!,
                                                days: controller
                                                    .silverPackageMenu(
                                                        context)[index]
                                                    .days!,
                                                numberOfDays: controller
                                                    .silverPackageMenu(
                                                        context)[index]
                                                    .numberOfDays!,
                                                price: controller
                                                    .silverPackageMenu(
                                                        context)[index]
                                                    .price!,
                                                resturentName: controller
                                                    .silverPackageMenu(
                                                        context)[index]
                                                    .resturentName!,
                                                verticalPadding: controller
                                                    .silverPackageMenu(
                                                        context)[index]
                                                    .verticalPadding!,
                                                imageHeight: controller
                                                    .silverPackageMenu(
                                                        context)[index]
                                                    .imageHeight!,
                                                rateVisiblity: controller
                                                    .silverPackageMenu(
                                                        context)[index]
                                                    .rateVisiblity!,
                                                ratingVisiblity: controller
                                                    .silverPackageMenu(
                                                        context)[index]
                                                    .ratingVisiblity!,
                                                resturentNameVisibility:
                                                    controller
                                                        .silverPackageMenu(
                                                            context)[index]
                                                        .resturentNameVisibility!,
                                                favoriteIconVisibility:
                                                    controller
                                                        .silverPackageMenu(
                                                            context)[index]
                                                        .favoriteIconVisibility!,
                                              );
                                            },
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              }

                              _showBottomSheet(context);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  AppLocalizations.of(context)!.home_button,
                                  textAlign: TextAlign.right,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Bahij',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Image.asset('images/stars.png'),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
