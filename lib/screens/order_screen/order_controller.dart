import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:project_one/models/order_menu.dart';

class OrderController extends GetxController{

  Color buttonColor1 = Colors.transparent;
  Color buttonColor2 = const Color(0xff8AB23B);
  Color TextAndIconColor1 = Colors.black;
  Color TextAndIconColor2 = Colors.white;
  Widget svgOne = SvgPicture.asset('images/order_screen_one_white.svg');
  Widget svgTwo = SvgPicture.asset('images/order_screen_two_black.svg');
  bool buttonOneClicked = true;
  bool buttonTwoClicked = true;
  bool widgetVisible = true;

  List<OrderMenuModel> OrderMenuOne(BuildContext context) {
    List<OrderMenuModel> OrderMenuOneList = [
      new OrderMenuModel(
        'images/example5.png',
        'images/resturent1.png',
        AppLocalizations.of(context)!.silver_coach_package,
        '130',
        AppLocalizations.of(context)!.day,
        '20',
        AppLocalizations.of(context)!.almalaki_restaurant,
        11,
        150,
        false,
        false,
        true,
        true,
      ),
      new OrderMenuModel(
        'images/example6.png',
        'images/resturent2.png',
        AppLocalizations.of(context)!.silver_coach_package,
        '95',
        AppLocalizations.of(context)!.days,
        '7',
        AppLocalizations.of(context)!.alomda_restaurant,
        11,
        150,
        false,
        false,
        true,
        true,
      ),
      new OrderMenuModel(
        'images/example5.png',
        'images/resturent1.png',
        AppLocalizations.of(context)!.silver_coach_package,
        '130',
        AppLocalizations.of(context)!.day,
        '20',
        AppLocalizations.of(context)!.almalaki_restaurant,
        11,
        150,
        false,
        false,
        true,
        true,
      ),
      new OrderMenuModel(
        'images/example6.png',
        'images/resturent2.png',
        AppLocalizations.of(context)!.silver_coach_package,
        '95',
        AppLocalizations.of(context)!.days,
        '7',
        AppLocalizations.of(context)!.alomda_restaurant,
        11,
        150,
        false,
        false,
        true,
        true,
      ),

    ];
    return OrderMenuOneList;
  }

  List<OrderMenuModel> OrderMenuTwo(BuildContext context) {
    List<OrderMenuModel> OrderMenuTwoList = [
      new OrderMenuModel(
        'images/example5.png',
        'images/resturent1.png',
        AppLocalizations.of(context)!.silver_coach_package,
        '130.00',
        AppLocalizations.of(context)!.day,
        '20',
        AppLocalizations.of(context)!.almalaki_restaurant,
        11,
        150,
        true,
        false,
        true,
        true,
      ),
      new OrderMenuModel(
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
        true,
        true,
        true,
      ),
      new OrderMenuModel(
        'images/example5.png',
        'images/resturent1.png',
        AppLocalizations.of(context)!.silver_coach_package,
        '130.00',
        AppLocalizations.of(context)!.day,
        '20',
        AppLocalizations.of(context)!.almalaki_restaurant,
        11,
        150,
        true,
        false,
        true,
        true,
      ),
      new OrderMenuModel(
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
        true,
        true,
        true,
      ),

    ];
    return OrderMenuTwoList;
  }

}