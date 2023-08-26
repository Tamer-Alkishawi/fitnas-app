import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_one/models/resturent_menu.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ResturentController extends GetxController {

  Color buttonColor1 = Colors.transparent;
  Color buttonColor2 = const Color(0xff44515E);
  Color TextAndIconColor1 = Colors.black;
  Color TextAndIconColor2 = Colors.white;
  bool widgetVisible = true;

  List<ResturentMenuModelOne> ResturentMenuOne(BuildContext context) {
    List<ResturentMenuModelOne> ResturentMenuOneList = [
      new ResturentMenuModelOne(
        'images/example7.png',
        'images/resturent2.png',
        AppLocalizations.of(context)!.silver_coach_package,
        '130.00',
        AppLocalizations.of(context)!.day,
        '20',
        AppLocalizations.of(context)!.alomda_restaurant,
        11,
        150,
        false,
        false,
        false,
        true,
      ),
      new ResturentMenuModelOne(
        'images/example8.png',
        'images/resturent2.png',
        AppLocalizations.of(context)!.silver_coach_package,
        '95.00',
        AppLocalizations.of(context)!.days,
        '7',
        AppLocalizations.of(context)!.alomda_restaurant,
        11,
        150,
        false,
        false,
        false,
        true,
      ),
      new ResturentMenuModelOne(
        'images/example5.png',
        'images/resturent2.png',
        AppLocalizations.of(context)!.silver_coach_package,
        '130.00',
        AppLocalizations.of(context)!.day,
        '20',
        AppLocalizations.of(context)!.alomda_restaurant,
        11,
        150,
        false,
        false,
        false,
        true,
      ),
      new ResturentMenuModelOne(
        'images/example6.png',
        'images/resturent2.png',
        AppLocalizations.of(context)!.silver_coach_package,
        '95.00',
        AppLocalizations.of(context)!.days,
        '7',
        AppLocalizations.of(context)!.alomda_restaurant,
        11,
        150,
        false,
        false,
        false,
        true,
      ),
    ];
    return ResturentMenuOneList;
  }

  List<ResturentMenuModelTwo> ResturentMenuTwo(BuildContext context) {
    List<ResturentMenuModelTwo> ResturentMenuTwoList = [
      new ResturentMenuModelTwo(
        'images/example9.png',
        AppLocalizations.of(context)!.meal1,
        AppLocalizations.of(context)!.meat,
        '19456',
        'images/example10.png',
        AppLocalizations.of(context)!.meal2,
        AppLocalizations.of(context)!.appetizers,
        '11456',
      ),
      new ResturentMenuModelTwo(
        'images/example14.png',
        AppLocalizations.of(context)!.meal3,
        AppLocalizations.of(context)!.pizza,
        '14086',
        'images/example11.png',
        AppLocalizations.of(context)!.meal4,
        AppLocalizations.of(context)!.deserts,
        '56056',
      ),
      new ResturentMenuModelTwo(
        'images/example12.png',
        AppLocalizations.of(context)!.meal5,
        AppLocalizations.of(context)!.appetizers,
        '14086',
        'images/example13.png',
        AppLocalizations.of(context)!.meal6,
        AppLocalizations.of(context)!.meat,
        '56056',
      ),
    ];
    return ResturentMenuTwoList;
  }
}
