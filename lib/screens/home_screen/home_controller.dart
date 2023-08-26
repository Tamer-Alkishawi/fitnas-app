import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:project_one/models/home_menu.dart';

import '../../widgets/silver_coach_package.dart';

class HomeController extends GetxController {

  List<ResturentMenuModel> resturentsMenu(BuildContext context) {
    List<ResturentMenuModel> resturentMenuList = [
      ResturentMenuModel(
        'images/resturent1.png',
        AppLocalizations.of(context)!.almalaki_restaurant,
        AppLocalizations.of(context)!.resturent_description,
        AppLocalizations.of(context)!.resturent_location,
      ),
      ResturentMenuModel(
        'images/resturent2.png',
        AppLocalizations.of(context)!.alomda_restaurant,
        AppLocalizations.of(context)!.resturent_description,
        AppLocalizations.of(context)!.resturent_location,
      ),
      ResturentMenuModel(
        'images/resturent1.png',
        AppLocalizations.of(context)!.almalaki_restaurant,
        AppLocalizations.of(context)!.resturent_description,
        AppLocalizations.of(context)!.resturent_location,
      ),
      ResturentMenuModel(
        'images/resturent2.png',
        AppLocalizations.of(context)!.alomda_restaurant,
        AppLocalizations.of(context)!.resturent_description,
        AppLocalizations.of(context)!.resturent_location,
      ),
      ResturentMenuModel(
        'images/resturent1.png',
        AppLocalizations.of(context)!.almalaki_restaurant,
        AppLocalizations.of(context)!.resturent_description,
        AppLocalizations.of(context)!.resturent_location,
      ),
      ResturentMenuModel(
        'images/resturent2.png',
        AppLocalizations.of(context)!.alomda_restaurant,
        AppLocalizations.of(context)!.resturent_description,
        AppLocalizations.of(context)!.resturent_location,
      ),
    ];
    return resturentMenuList;
  }

  List<SilverPackageMenuModel> silverPackageMenu(BuildContext context) {
    List<SilverPackageMenuModel> silverPackageMenuList = [
      new SilverPackageMenuModel(
        'images/example2.png',
        'images/resturent2.png',
        AppLocalizations.of(context)!.silver_coach_package,
        '130',
        AppLocalizations.of(context)!.day,
        '1',
        AppLocalizations.of(context)!.alomda_restaurant,
        6,
        114,
        false,
        false,
        true,
        true,
      ),
      new SilverPackageMenuModel(
        'images/example3.png',
        'images/resturent1.png',
        AppLocalizations.of(context)!.silver_coach_package,
        '130',
        AppLocalizations.of(context)!.day,
        '1',
        AppLocalizations.of(context)!.almalaki_restaurant,
        6,
        114,
        false,
        false,
        true,
        true,
      ),
      new SilverPackageMenuModel(
        'images/example2.png',
        'images/resturent2.png',
        AppLocalizations.of(context)!.silver_coach_package,
        '130',
        AppLocalizations.of(context)!.day,
        '1',
        AppLocalizations.of(context)!.alomda_restaurant,
        6,
        114,
        false,
        false,
        true,
        true,
      ),
      new SilverPackageMenuModel(
        'images/example3.png',
        'images/resturent1.png',
        AppLocalizations.of(context)!.silver_coach_package,
        '130',
        AppLocalizations.of(context)!.day,
        '1',
        AppLocalizations.of(context)!.almalaki_restaurant,
        6,
        114,
        false,
        false,
        true,
        true,
      ),
    ];
    return silverPackageMenuList;
  }


}
