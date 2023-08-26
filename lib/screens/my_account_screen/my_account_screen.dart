import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/create_account_two_screen/create_account_two.dart';
import 'package:project_one/screens/my_account_screen/my_account_controller.dart';
import 'package:project_one/screens/settings_screen/settings_screen.dart';
import 'package:project_one/screens/wallet_screen/wallet_screen.dart';
import 'package:project_one/widgets/list_tile_container.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({Key? key}) : super(key: key);

  @override
  State<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyAccountController>(
        init: MyAccountController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: controller.tapped
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ListView(
                      children: [
                        SizedBox(
                          height: 16.5,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(),
                            ),
                            Expanded(
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Color(0xffF6F6F6),
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset('images/person.png'),
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Get.to(SettingsScreen());
                                    },
                                    icon: const Icon(
                                      Icons.settings,
                                      color: Color(0xffA3A2B2),
                                      size: 22,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          AppLocalizations.of(context)!.salah_eldin,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'Bahij',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    Get.to(WalletScreen());
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 12),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xffF8F8F8),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 24,
                                              width: 24,
                                              child: SvgPicture.asset(
                                                  'images/wallet2.svg'),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              AppLocalizations.of(context)!
                                                  .wallet,
                                              textAlign: TextAlign.start,
                                              style: const TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Bahij',
                                                color: Color(0xff595757),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 6,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  controller.myAccountMenuListOne[0].price!,
                                                  textAlign: TextAlign.start,
                                                  style: const TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: 'Bahij',
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                SizedBox(
                                                  width: 6,
                                                ),
                                                Text(
                                                  AppLocalizations.of(context)!
                                                      .price,
                                                  textAlign: TextAlign.start,
                                                  style: const TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: 'Bahij',
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0xffF8F8F8),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 24,
                                            width: 24,
                                            child: SvgPicture.asset(
                                                'images/fire.svg'),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            AppLocalizations.of(context)!
                                                .count_your_calories,
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Bahij',
                                              color: Color(0xff595757),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '11264',
                                                textAlign: TextAlign.start,
                                                style: const TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: 'Bahij',
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              SizedBox(
                                                width: 6,
                                              ),
                                              Text(
                                                AppLocalizations.of(context)!
                                                    .calorie,
                                                textAlign: TextAlign.start,
                                                style: const TextStyle(
                                                    fontSize: 10,
                                                    fontFamily: 'Bahij',
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffF8F8F8),
                          ),
                          child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount:controller.MyAccountMenuTwo(context).length,
                            itemBuilder: (context, index) {
                              return ListTileContainer(
                                svgUrl: controller.MyAccountMenuTwo(context)[index].svgUrl.toString(),
                                title: controller.MyAccountMenuTwo(context)[index].title!,
                                dividerVisibility: controller.MyAccountMenuTwo(context)[index].dividerVisibility!,
                                route: controller.MyAccountMenuTwo(context)[index].route,
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ListView(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(),
                            ),
                            Expanded(
                              child: Text(
                                AppLocalizations.of(context)!.account,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'Bahij',
                                ),
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Get.to(SettingsScreen());
                                    },
                                    icon: const Icon(
                                      Icons.settings,
                                      color: Color(0xffA3A2B2),
                                      size: 22,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 21,
                        ),
                        Container(
                          height: 55,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 55,
                                width: 174,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xffF8F8F8),
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                  onPressed: () {
                                    Get.to(CreateAccountTwo());
                                  },
                                  child: Text(
                                    AppLocalizations.of(context)!
                                        .create_account,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Bahij',
                                        color: Color(0xff44515E),
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 0.07),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 55,
                                width: 174,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    primary: const Color(0xff8AB23B),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      controller.tapped = true;
                                    });
                                  },
                                  child: Text(
                                    AppLocalizations.of(context)!.login,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Bahij',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.07,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffF8F8F8),
                          ),
                          child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount:controller.MyAccountMenuThree(context).length,
                            itemBuilder: (context, index) {
                              return ListTileContainer(
                                svgUrl: controller.MyAccountMenuThree(context)[index].svgUrl.toString(),
                                title: controller.MyAccountMenuThree(context)[index].title!,
                                dividerVisibility: controller.MyAccountMenuThree(context)[index].dividerVisibility!,
                                route: controller.MyAccountMenuThree(context)[index].route,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
          );
        });
  }
}
