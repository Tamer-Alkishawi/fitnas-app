import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:project_one/models/meal_menu.dart';

class MealController extends GetxController {

  int currentPageIndex = 0;
  late PageController Imagecontroller;

  @override
  void onInit() {
    Imagecontroller = PageController();
    super.onInit();
  }

  @override
  void dispose() {
    Imagecontroller.dispose();
    super.dispose();
  }

  List<MealMenuModel> MealMenu(BuildContext context) {
    List<MealMenuModel> MealMenuList = [
      new MealMenuModel(
          ['images/example15.png', 'images/example15.png', 'images/example15.png', 'images/example15.png'],
          AppLocalizations.of(context)!.meal1,
          '19456',
          AppLocalizations.of(context)!.meal_hint,
          [AppLocalizations.of(context)!.green_salad, AppLocalizations.of(context)!.potato, AppLocalizations.of(context)!.natural_juice],
          '19456',
          '19456',
          '19456',
          ['images/wheat.svg', 'images/milk.svg'],
          [AppLocalizations.of(context)!.contains_wheat_and_glucose, AppLocalizations.of(context)!.contains_egg_and_milk],
      )
    ];
    return MealMenuList;
  }
}
