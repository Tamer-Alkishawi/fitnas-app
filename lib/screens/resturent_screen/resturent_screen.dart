import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/resturent_screen/resturent_controller.dart';
import 'package:project_one/widgets/favorite_icon.dart';
import 'package:project_one/widgets/silver_coach_package.dart';
import '../../widgets/meals_container.dart';

class ResturentScreen extends StatefulWidget {
  const ResturentScreen({Key? key}) : super(key: key);

  @override
  State<ResturentScreen> createState() => _ResturentScreenState();
}

class _ResturentScreenState extends State<ResturentScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ResturentController>(
      init: ResturentController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(
              AppLocalizations.of(context)!.altailandy_resturent,
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
            actions: [
              Row(
                children: [
                  FavoriteIcon(),
                  SizedBox(width: 16,)
                ],
              ),
            ],
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              children: [
                SizedBox(
                  height: 22,
                ),
                Container(
                  height: 80,
                  width: 80,
                  child: Image.asset('images/tailandy_resturent.png'),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 34,
                    ),
                    Text(
                      AppLocalizations.of(context)!.altailandy_resturent,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Bahij',
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset('images/star.svg'),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '4/5',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Bahij',
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xff595757),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('images/location2.svg'),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      AppLocalizations.of(context)!.altailandy_location,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Bahij',
                          color: Color(0xff595757),
                          letterSpacing: 0.07),
                    ),
                  ],
                ),
                SizedBox(
                  height: 17,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('images/stars.png'),
                    SizedBox(
                      width: 6,
                    ),
                    Expanded(
                      child: Text(
                        AppLocalizations.of(context)!.altailandy_hint,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Bahij',
                          color: Color(0xff595757),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
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
                              controller.widgetVisible = true;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              primary: controller.buttonColor2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(23),
                              ),
                              elevation: 0),
                          child: Text(
                            AppLocalizations.of(context)!.the_packages,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Bahij',
                              fontWeight: FontWeight.w500,
                              color: controller.TextAndIconColor2,
                            ),
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
                              controller.widgetVisible = false;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: controller.buttonColor1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(23),
                            ),
                            elevation: 0,
                          ),
                          child: Text(
                            AppLocalizations.of(context)!.meals,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Bahij',
                              fontWeight: FontWeight.w500,
                              color: controller.TextAndIconColor1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                controller.widgetVisible
                    ? Column(
                  children: [
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount:
                      controller
                          .ResturentMenuOne(context)
                          .length,
                      itemBuilder: (context, index) {
                        return SilverCoachPackageTwoContainer(
                            imageUrl1: controller.ResturentMenuOne(
                                context)[index].imageUrl1!,
                            imageUrl2: controller.ResturentMenuOne(
                                context)[index].imageUrl2!,
                            hint: controller.ResturentMenuOne(
                                context)[index].hint!,
                            days: controller.ResturentMenuOne(
                                context)[index].days!,
                            numberOfDays: controller.ResturentMenuOne(
                                context)[index].numberOfDays!,
                            price: controller.ResturentMenuOne(
                                context)[index].price!,
                            resturentName: controller.ResturentMenuOne(
                                context)[index].resturentName!,
                            verticalPadding: controller.ResturentMenuOne(
                                context)[index].verticalPadding!,
                            imageHeight: controller.ResturentMenuOne(
                                context)[index].imageHeight!,
                            rateVisiblity: controller.ResturentMenuOne(
                                context)[index].rateVisiblity!,
                            ratingVisiblity: controller.ResturentMenuOne(
                                context)[index].ratingVisiblity!,
                            resturentNameVisibility:
                            controller.ResturentMenuOne(
                                context)[index].resturentNameVisibility!,
                            favoriteIconVisibility:
                            controller.ResturentMenuOne(
                                context)[index].favoriteIconVisibility!);
                      },
                    ),
                  ],
                )
                    : Column(
                  children: [
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: controller
                          .ResturentMenuTwo(context)
                          .length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            MealsContainer(
                                imageUrl: controller.ResturentMenuTwo(
                                    context)[index].imageUrl!,
                                mealName: controller.ResturentMenuTwo(
                                    context)[index].mealName!,
                                mealTypeName: controller.ResturentMenuTwo(
                                    context)[index].mealTypeName!,
                                numberOfCalories: controller.ResturentMenuTwo(
                                    context)[index].numberOfCalories!,
                                imageUrl2: controller.ResturentMenuTwo(
                                    context)[index].imageUrl2!,
                                mealName2: controller.ResturentMenuTwo(
                                    context)[index].mealName2!,
                                mealTypeName2: controller.ResturentMenuTwo(
                                    context)[index].mealTypeName2!,
                                numberOfCalories2: controller.ResturentMenuTwo(
                                    context)[index].numberOfCalories2!),
                            SizedBox(height: 10,),
                          ],
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        );
      },);
  }
}
