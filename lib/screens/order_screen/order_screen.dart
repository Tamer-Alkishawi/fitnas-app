import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/order_screen/order_controller.dart';
import 'package:project_one/widgets/silver_coach_package.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrderController>(
      init: OrderController(),
      builder: (controller){
      return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ListView(
                children: [
                  SizedBox(
                    height: 12.42,
                  ),
                  Container(
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
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
                                controller.buttonColor2 = const Color(0xff8AB23B);
                                controller.TextAndIconColor2 = Colors.white;
                                controller.TextAndIconColor1 = Colors.black;
                                controller.svgOne = SvgPicture.asset(
                                    'images/order_screen_one_white.svg');
                                controller.svgTwo = SvgPicture.asset(
                                    'images/order_screen_two_black.svg');
                                controller.widgetVisible = true;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: controller.buttonColor2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              elevation: 0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                controller.svgOne,
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  AppLocalizations.of(context)!.the_current,
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
                                controller.buttonColor1 = const Color(0xff8AB23B);
                                controller.buttonColor2 = Colors.transparent;
                                controller.TextAndIconColor1 = Colors.white;
                                controller.TextAndIconColor2 = Colors.black;
                                controller.svgTwo = SvgPicture.asset(
                                    'images/order_screen_two.svg');
                                controller.svgOne = SvgPicture.asset(
                                    'images/order_screen_one.svg');
                                controller.widgetVisible = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: controller.buttonColor1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              elevation: 0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                controller.svgTwo,
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  AppLocalizations.of(context)!.the_previous,
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
                  SizedBox(
                    height: 16,
                  ),
                  controller.widgetVisible
                      ? Expanded(
                      child: Column(
                        children: [
                          ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: controller
                                .OrderMenuOne(context)
                                .length,
                            itemBuilder: (context, index) {
                              return SilverCoachPackageTwoContainer(
                                imageUrl1: controller.OrderMenuOne(context)[index]
                                    .imageUrl1!,
                                imageUrl2: controller.OrderMenuOne(context)[index]
                                    .imageUrl2!,
                                hint: controller.OrderMenuOne(context)[index]
                                    .hint!,
                                days: controller.OrderMenuOne(context)[index]
                                    .days!,
                                numberOfDays: controller.OrderMenuOne(context)[index]
                                    .numberOfDays!,
                                price: controller.OrderMenuOne(context)[index]
                                    .price!,
                                resturentName: controller.OrderMenuOne(context)[index]
                                    .resturentName!,
                                verticalPadding: controller.OrderMenuOne(context)[index]
                                    .verticalPadding!,
                                imageHeight: controller.OrderMenuOne(context)[index]
                                    .imageHeight!,
                                rateVisiblity: controller.OrderMenuOne(context)[index]
                                    .rateVisiblity!,
                                ratingVisiblity: controller.OrderMenuOne(context)[index]
                                    .ratingVisiblity!,
                                resturentNameVisibility: controller.OrderMenuOne(context)[index]
                                    .resturentNameVisibility!,
                                favoriteIconVisibility: controller.OrderMenuOne(context)[index]
                                    .favoriteIconVisibility!,);
                            },
                          ),
                        ],
                      ))
                      : Expanded(
                      child: Column(
                        children: [
                          ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: controller
                                .OrderMenuTwo(context)
                                .length,
                            itemBuilder: (context, index) {
                              return SilverCoachPackageTwoContainer(
                                imageUrl1: controller.OrderMenuTwo(context)[index]
                                    .imageUrl1!,
                                imageUrl2: controller.OrderMenuTwo(context)[index]
                                    .imageUrl2!,
                                hint: controller.OrderMenuTwo(context)[index]
                                    .hint!,
                                days: controller.OrderMenuTwo(context)[index]
                                    .days!,
                                numberOfDays: controller.OrderMenuTwo(context)[index]
                                    .numberOfDays!,
                                price: controller.OrderMenuTwo(context)[index]
                                    .price!,
                                resturentName: controller.OrderMenuTwo(context)[index]
                                    .resturentName!,
                                verticalPadding: controller.OrderMenuTwo(context)[index]
                                    .verticalPadding!,
                                imageHeight: controller.OrderMenuTwo(context)[index]
                                    .imageHeight!,
                                rateVisiblity: controller.OrderMenuTwo(context)[index]
                                    .rateVisiblity!,
                                ratingVisiblity: controller.OrderMenuTwo(context)[index]
                                    .ratingVisiblity!,
                                resturentNameVisibility: controller.OrderMenuTwo(context)[index]
                                    .resturentNameVisibility!,
                                favoriteIconVisibility: controller.OrderMenuTwo(context)[index]
                                    .favoriteIconVisibility!,);
                            },
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ));
    },);
  }
}
