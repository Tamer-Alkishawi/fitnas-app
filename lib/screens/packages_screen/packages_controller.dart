import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:project_one/models/packages_menu.dart';

class PackageController extends GetxController{
  int selected = 0;

  List<PackageMenuModelOne> PackagesMenuOne(BuildContext context) {
    List<PackageMenuModelOne> PackagesMenuOneList = [

      new PackageMenuModelOne(
        'images/example5.png',
        'images/resturent1.png',
        AppLocalizations.of(context)!.silver_coach_package,
        '130',
        AppLocalizations.of(context)!.days,
        '20',
        AppLocalizations.of(context)!.almalaki_restaurant,
        10,
        150,
        true,
        false,
        true,
        true,
      ),
      new PackageMenuModelOne(
        'images/example6.png',
        'images/resturent2.png',
        AppLocalizations.of(context)!.silver_coach_package,
        '95',
        AppLocalizations.of(context)!.days,
        '7',
        AppLocalizations.of(context)!.alomda_restaurant,
        10,
        150,
        true,
        false,
        true,
        true,
      ),
      new PackageMenuModelOne(
        'images/example5.png',
        'images/resturent1.png',
        AppLocalizations.of(context)!.silver_coach_package,
        '130',
        AppLocalizations.of(context)!.days,
        '20',
        AppLocalizations.of(context)!.almalaki_restaurant,
        10,
        150,
        true,
        false,
        true,
        true,
      ),
      new PackageMenuModelOne(
        'images/example6.png',
        'images/resturent2.png',
        AppLocalizations.of(context)!.silver_coach_package,
        '95',
        AppLocalizations.of(context)!.days,
        '7',
        AppLocalizations.of(context)!.alomda_restaurant,
        10,
        150,
        true,
        false,
        true,
        true,
      ),

    ];
    return PackagesMenuOneList;
  }

  List<PackageMenuModelTwo> PackagesMenuTwo(BuildContext context) {
    List<PackageMenuModelTwo> PackagesMenuTwoList = [
      new PackageMenuModelTwo(
          AppLocalizations.of(context)!.all_packages, selected == 0, () {
        selected = 0;
        update();
      }),
      new PackageMenuModelTwo(
          AppLocalizations.of(context)!.daily_packages, selected == 1, () {
        selected = 1;
        update();
      }),
      new PackageMenuModelTwo(
          AppLocalizations.of(context)!.weekly_packages, selected == 2, () {
        selected = 2;
        update();
      }),
      new PackageMenuModelTwo(
          AppLocalizations.of(context)!.monthly_packages, selected == 3, () {
        selected = 3;
        update();
      }),
    ];
    return PackagesMenuTwoList;
  }

}