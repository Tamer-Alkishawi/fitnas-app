import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/meal_screen/meal_controller.dart';

import '../../widgets/meal_screen_row.dart';
import '../../widgets/on_boarding_indicator.dart';

class MealScreen extends StatefulWidget {
  const MealScreen({Key? key}) : super(key: key);

  @override
  State<MealScreen> createState() => _MealScreenState();
}

class _MealScreenState extends State<MealScreen> {
  @override
  Widget build(BuildContext context) {
    final isEnglish = Localizations
        .localeOf(context)
        .languageCode == 'ar';

    return GetBuilder<MealController>(
        init: MealController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Colors.white,
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0.5,
              shadowColor: Color(0xffF8F8F8),
              title: Text(
                AppLocalizations.of(context)!.meal_details,
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
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ListView(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 175,
                    child: Expanded(
                      child: Stack(
                        children: [
                          PageView(
                            physics: const BouncingScrollPhysics(),
                            reverse: isEnglish ? true : false,
                            controller: controller.Imagecontroller,
                            scrollDirection: Axis.horizontal,
                            onPageChanged: (int currentPageIndex) {
                              setState(
                                    () {
                                      controller.currentPageIndex = currentPageIndex;
                                },
                              );
                            },
                            children: [
                              Image.asset(
                                  controller.MealMenu(context)[0].imagesUrl[0]),
                              Image.asset(
                                  controller.MealMenu(context)[0].imagesUrl[1]),
                              Image.asset(
                                  controller.MealMenu(context)[0].imagesUrl[2]),
                              Image.asset(
                                  controller.MealMenu(context)[0].imagesUrl[3]),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding:
                                EdgeInsets.symmetric(
                                    horizontal: 14, vertical: 4),
                                margin: EdgeInsets.only(
                                    left: 12, top: 12, right: 12),
                                child: Text(
                                  AppLocalizations.of(context)!.meat,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Bahij',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.77),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OnBoardingIndicator(
                        Selected: isEnglish
                            ? controller.currentPageIndex == 3
                            : controller.currentPageIndex == 0,
                      ),
                      OnBoardingIndicator(
                        Selected: isEnglish
                            ? controller.currentPageIndex == 2
                            : controller.currentPageIndex == 1,
                      ),
                      OnBoardingIndicator(
                        Selected: isEnglish
                            ? controller.currentPageIndex == 1
                            : controller.currentPageIndex == 2,
                      ),
                      OnBoardingIndicator(
                        Selected: isEnglish
                            ? controller.currentPageIndex == 0
                            : controller.currentPageIndex == 3,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        controller.MealMenu(context)[0].mealName!,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Bahij',
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            child: SvgPicture.asset('images/fire.svg'),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            controller.MealMenu(context)[0].calories!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Bahij',
                              fontWeight: FontWeight.w700,
                              color: Color(0xff595757),
                            ),
                          ),
                          Text(
                            AppLocalizations.of(context)!.calories,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Bahij',
                              color: Color(0xff595757),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Text(
                    AppLocalizations.of(context)!.meal_content_description,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Bahij',
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    controller.MealMenu(context)[0].mealDiscreption!,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Bahij',
                      color: Color(0xff595757),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    AppLocalizations.of(context)!.meal_content,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Bahij',
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 14, vertical: 6),
                        decoration: BoxDecoration(
                          color: Color(0xffF8F8F8),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          controller.MealMenu(context)[0].mealContent[0],
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Bahij',
                              color: Color(0xff595757),
                              letterSpacing: 0.07),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 14, vertical: 6),
                        decoration: BoxDecoration(
                          color: Color(0xffF8F8F8),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          controller.MealMenu(context)[0].mealContent[1],
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Bahij',
                              color: Color(0xff595757),
                              letterSpacing: 0.07),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 14, vertical: 6),
                        decoration: BoxDecoration(
                          color: Color(0xffF8F8F8),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          controller.MealMenu(context)[0].mealContent[2],
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Bahij',
                              color: Color(0xff595757),
                              letterSpacing: 0.07),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 11),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                color: Color(0xffF4F4F4),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: SvgPicture.asset(
                                    'images/carbohydrate.svg'),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              AppLocalizations.of(context)!.carbohydrate,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Bahij',
                                color: Color(0xff595757),
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              controller.MealMenu(context)[0].carbs!,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Bahij',
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                color: Color(0xffF4F4F4),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: SvgPicture.asset('images/fat.svg'),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              AppLocalizations.of(context)!.fat,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Bahij',
                                color: Color(0xff595757),
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              controller.MealMenu(context)[0].fat!,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Bahij',
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                color: Color(0xffF4F4F4),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: SvgPicture.asset('images/protine.svg'),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              AppLocalizations.of(context)!.protein,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Bahij',
                                color: Color(0xff595757),
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              controller.MealMenu(context)[0].protine!,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Bahij',
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                color: Color(0xffF4F4F4),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: SvgPicture.asset('images/fire.svg'),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              AppLocalizations.of(context)!.calories,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Bahij',
                                color: Color(0xff595757),
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              controller.MealMenu(context)[0].calories!,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Bahij',
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset('images/sick_person.svg'),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              AppLocalizations.of(context)!.allergens,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Bahij',
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount:controller.MealMenu(context)[0].title.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                MealScreenRow(
                                  svgUrl: controller.MealMenu(context)[0].iconUrl[index],
                                  title: controller.MealMenu(context)[0].title[index],
                                ),
                                SizedBox(
                                  height: 7,
                                ),

                              ],
                            );
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          indent: 34,
                          thickness: 1,
                          color: Color(0xffF4F4F4),
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
