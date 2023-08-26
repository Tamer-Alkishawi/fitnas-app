import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_one/models/silver_coach_package_menu.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SilverCoachPackageController extends GetxController {
  int currentPageIndex = 0;
  late PageController Imagecontroller;
  Color buttonColor1 = Colors.transparent;
  Color buttonColor2 = const Color(0xff44515E);
  Color TextAndIconColor1 = Colors.black;
  Color TextAndIconColor2 = Colors.white;
  bool widgetVisible = true;

  @override
  void onInit() {
    Imagecontroller = PageController();
    super.onInit();
  }

  @override
  void dispose() {
    Imagecontroller.dispose();
    super.dispose();
    super.onInit();
  }


  List<SilverCoachPackageOneMenuModel> SilverCoachPackageOneMenu(
      BuildContext context) {
    List<SilverCoachPackageOneMenuModel> SilverCoachPackageOneMenuList = [
      new SilverCoachPackageOneMenuModel(
          ['images/example5.png', 'images/example5.png', 'images/example5.png', 'images/example5.png',],
          '7 أيام',
          '110',
          '95.00',
          'images/resturent2.png',
          AppLocalizations.of(context)!.alomda_restaurant,
          'باقة الكوتش الفضية هي مجموعة من الوجبات والأطعمة المتوازنة والغنية بالعناصر الغذائية الصحية. تهدف إلى توفير القيمة الغذائية الكاملة للجسم وتعزيز الصحة العامة.',
          'شهرية',
          'كيتو',
        ['images/wheat.svg', 'images/milk.svg'],
        [AppLocalizations.of(context)!.contains_wheat_and_glucose, AppLocalizations.of(context)!.contains_egg_and_milk],
        ['وجبة رئيسية', 'سلطة خضار', 'مشروب طبيعي'],
      )
    ];
    return SilverCoachPackageOneMenuList;
  }

  List<SilverCoachPackageTwoMenuModel> SilverCoachPackageTwoMenu(
      BuildContext context) {
    List<SilverCoachPackageTwoMenuModel> SilverCoachPackageTwoMenuList = [
      new SilverCoachPackageTwoMenuModel(
        'images/example9.png',
        AppLocalizations.of(context)!.meal1,
        AppLocalizations.of(context)!.meat,
        '19456',
        'images/example10.png',
        AppLocalizations.of(context)!.meal2,
        AppLocalizations.of(context)!.appetizers,
        '11456',
      ),
      new SilverCoachPackageTwoMenuModel(
        'images/example14.png',
        AppLocalizations.of(context)!.meal3,
        AppLocalizations.of(context)!.pizza,
        '14086',
        'images/example11.png',
        AppLocalizations.of(context)!.meal4,
        AppLocalizations.of(context)!.deserts,
        '56056',
      ),
    ];
    return SilverCoachPackageTwoMenuList;
  }
}
