import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:project_one/screens/meal_screen/meal_screen.dart';

class MealsContainer extends StatefulWidget {
  MealsContainer({
    super.key,
    required this.imageUrl,
    required this.mealName,
    required this.mealTypeName,
    required this.numberOfCalories,
    required this.imageUrl2,
    required this.mealName2,
    required this.mealTypeName2,
    required this.numberOfCalories2,
  });

  String imageUrl;
  String mealName;
  String mealTypeName;
  String numberOfCalories;
  String imageUrl2;
  String mealName2;
  String mealTypeName2;
  String numberOfCalories2;

  @override
  State<MealsContainer> createState() => _MealsContainerState();
}

class _MealsContainerState extends State<MealsContainer> {
  @override
  Widget build(BuildContext context) {
    final isEnglish = Localizations.localeOf(context).languageCode == 'ar';
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              Get.to(MealScreen());
            },
            child: Container(
              width: (MediaQuery.of(context).size.width - 42) / 2,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Color(0xffF4F4F4),
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(child: Image.asset(widget.imageUrl)),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.mealName,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Bahij',
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 12,
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
                                  widget.numberOfCalories,
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
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    child: Align(
                      alignment: isEnglish? Alignment.topLeft : Alignment.topRight,
                      child: Container(
                        padding:
                        EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                        margin: EdgeInsets.only(left: 6, top: 6, right: 6),
                        child: Text(
                          widget.mealTypeName,
                          textAlign: TextAlign.start,
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
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Expanded(
          child: GestureDetector(
            onTap: () {
              Get.to(MealScreen());
            },
            child: Container(
              width: (MediaQuery.of(context).size.width - 42) / 2,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Color(0xffF4F4F4),
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(child: Image.asset(widget.imageUrl2)),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.mealName2,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Bahij',
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 12,
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
                                  widget.numberOfCalories2,
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
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    child: Align(
                      alignment: isEnglish? Alignment.topLeft : Alignment.topRight,
                      child: Container(
                        padding:
                        EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                        margin: EdgeInsets.only(left: 6, top: 6, right: 6),
                        child: Text(
                          widget.mealTypeName2,
                          textAlign: TextAlign.start,
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
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
