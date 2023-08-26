import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/silver_coach_package_screen/silver_coach_package_controller.dart';
import 'package:project_one/widgets/package_content_row.dart';
import '../../widgets/favorite_icon.dart';
import '../../widgets/meal_screen_row.dart';
import '../../widgets/meals_container.dart';
import '../../widgets/on_boarding_indicator.dart';
import '../package_details_screen/package_details_screen.dart';

class SilverCoachPackageScreen extends StatefulWidget {
  const SilverCoachPackageScreen({Key? key}) : super(key: key);

  @override
  State<SilverCoachPackageScreen> createState() =>
      _SilverCoachPackageScreenState();
}

class _SilverCoachPackageScreenState extends State<SilverCoachPackageScreen> {

  @override
  Widget build(BuildContext context) {

    final isEnglish = Localizations.localeOf(context).languageCode == 'ar';

    return GetBuilder<SilverCoachPackageController>(
      init: SilverCoachPackageController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.5,
            shadowColor: Color(0xffF8F8F8),
            title: Text(
              AppLocalizations.of(context)!.silver_coach_package,
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
                  SizedBox(
                    width: 16,
                  ),
                ],
              )
            ],
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
                    child: PageView(
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
                            controller.SilverCoachPackageOneMenu(context)[0]
                                .imagesUrl[0]),
                        Image.asset(
                            controller.SilverCoachPackageOneMenu(context)[0]
                                .imagesUrl[1]),
                        Image.asset(
                            controller.SilverCoachPackageOneMenu(context)[0]
                                .imagesUrl[2]),
                        Image.asset(
                            controller.SilverCoachPackageOneMenu(context)[0]
                                .imagesUrl[3]),
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
                  height: 24,
                ),
                Text(
                  AppLocalizations.of(context)!.silver_coach_package,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Bahij',
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('images/time.svg'),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          controller.SilverCoachPackageOneMenu(context)[0].days,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Bahij',
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 46,
                          child: Stack(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    controller.SilverCoachPackageOneMenu(
                                            context)[0]
                                        .oldprice,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Bahij',
                                      color: Color(0xffA3A2B2),
                                    ),
                                  ),
                                ],
                              ),
                              Positioned(
                                left: 0,
                                right: 0,
                                child: Divider(
                                  thickness: 1,
                                  color: Color(0xffA3A2B2),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          child: SvgPicture.asset('images/price.svg'),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Row(
                          children: [
                            Text(
                              controller.SilverCoachPackageOneMenu(context)[0]
                                  .newprice,
                              textAlign: TextAlign.right,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Bahij',
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              AppLocalizations.of(context)!.price,
                              textAlign: TextAlign.right,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Bahij',
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 1,
                  color: Color(0xffF4F4F4),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      child: Image.asset(
                          controller.SilverCoachPackageOneMenu(context)[0]
                              .resturentIcon),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      AppLocalizations.of(context)!.alomda_restaurant,
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                          fontSize: 12,
                          fontFamily: 'Bahij',
                          color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  controller.SilverCoachPackageOneMenu(context)[0].hint,
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
                            'التفاصيل',
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
                controller.widgetVisible
                    ? Column(
                        children: [
                          SizedBox(
                            height: 24,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 62),
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
                                        child:
                                            SvgPicture.asset('images/box.svg'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'تصنيف الباقة',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontFamily: 'Bahij',
                                        color: Color(0xff595757),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      controller.SilverCoachPackageOneMenu(
                                              context)[0]
                                          .packageTime,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 12,
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
                                        child:
                                            SvgPicture.asset('images/keto.svg'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'التصنيف الغذائي',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontFamily: 'Bahij',
                                        color: Color(0xff595757),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      controller.SilverCoachPackageOneMenu(
                                              context)[0]
                                          .classification,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 12,
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
                            height: 41,
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
                                  itemCount:
                                      controller.SilverCoachPackageOneMenu(
                                              context)[0]
                                          .title
                                          .length,
                                  itemBuilder: (context, index) {
                                    return Column(
                                      children: [
                                        MealScreenRow(
                                          svgUrl: controller
                                                  .SilverCoachPackageOneMenu(
                                                      context)[0]
                                              .iconUrl[index],
                                          title: controller
                                                  .SilverCoachPackageOneMenu(
                                                      context)[0]
                                              .title[index],
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 38,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset('images/box.svg'),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'محتويات البوكس:',
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
                                  height: 11,
                                ),
                                ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  itemCount:
                                      controller.SilverCoachPackageOneMenu(context)[0].title2.length,
                                  itemBuilder: (context, index) {
                                    return Column(
                                      children: [
                                        PackageContentRow(
                                            title: controller
                                                    .SilverCoachPackageOneMenu(
                                                        context)[0]
                                                .title2[index]),
                                        SizedBox(
                                          height: 7,
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset('images/plan.svg'),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'خطة المطعم لتنفيذ الباقة:',
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
                            height: 10,
                          ),
                          Text(
                            'مرحبًا بك في مطعمنا الصحي! سيتم توزيع الخطة الشهررية 5 ايام باالاسبوع ، سيكون في كل يوم وجبة مخصصة حسب الخطة الغذائية وفق وصف صحي:',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Bahij',
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '1.',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Bahij',
                                  color: Color(0xff595757),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: Text(
                                  'تحليل الاحتياجات الغذائية: سنقوم بتحليل احتياجاتك الغذائية الفردية وتفضيلاتك الشخصية. ستتم مقابلة مع أخصائي تغذية محترف لفهم احتياجاتك والعوامل المهمة مثل الحساسيات الغذائية والتفضيلات الخاصة.',
                                  textAlign: TextAlign.right,
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
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '2.',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Bahij',
                                  color: Color(0xff595757),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: Text(
                                  'تصميم القائمة الغذائية: بناءً على تحليل الاحتياجات الغذائية، سيتم تصميم قائمة طعام خاصة لباقة الوجبات الصحية. ستشمل القائمة مجموعة متنوعة من الأطباق الغذائية الطازجة والمغذية التي تلبي الاحتياجات الغذائية المحددة وتضمن تنوعًا وتوازنًا في النظام الغذائي.',
                                  textAlign: TextAlign.right,
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
                            height: 84,
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          SizedBox(
                            height: 12,
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount:
                                controller.SilverCoachPackageTwoMenu(context)
                                    .length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  MealsContainer(
                                      imageUrl:
                                          controller.SilverCoachPackageTwoMenu(context)[index]
                                              .imageUrl!,
                                      mealName:
                                          controller.SilverCoachPackageTwoMenu(context)[index]
                                              .mealName!,
                                      mealTypeName:
                                          controller.SilverCoachPackageTwoMenu(context)[index]
                                              .mealTypeName!,
                                      numberOfCalories:
                                          controller.SilverCoachPackageTwoMenu(context)[index]
                                              .numberOfCalories!,
                                      imageUrl2:
                                          controller.SilverCoachPackageTwoMenu(context)[index]
                                              .imageUrl2!,
                                      mealName2:
                                          controller.SilverCoachPackageTwoMenu(context)[index]
                                              .mealName2!,
                                      mealTypeName2:
                                          controller.SilverCoachPackageTwoMenu(context)[index]
                                              .mealTypeName2!,
                                      numberOfCalories2:
                                          controller.SilverCoachPackageTwoMenu(
                                                  context)[index]
                                              .numberOfCalories2!),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              );
                            },
                          ),
                        ],
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
                            Get.to(PackageDetailsScreen());
                          },
                          child: Container(
                            child: Text(
                              'اشترك بالباقة',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Bahij',
                                  color: Colors.white,
                                  letterSpacing: 0.07,
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
