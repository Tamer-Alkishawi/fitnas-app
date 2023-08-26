import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_one/models/favorie_menu.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FavoriteController extends GetxController{

  Color ButtonColor1 = Colors.transparent;
  Color ButtonColor2 = const Color(0xff44515E);
  Color TextColor1 = Colors.black;
  Color TextColor2 = Colors.white;
  bool widgetVisible = true;

  List<FavoriteMenuModelOne> favoriteMenuOne(BuildContext context) {
    List<FavoriteMenuModelOne> favoriteMenuListOne = [
      new FavoriteMenuModelOne(
        'images/resturent1.png',
        AppLocalizations.of(context)!.almalaki_restaurant,
        AppLocalizations.of(context)!.resturent_description,
        AppLocalizations.of(context)!.resturent_location,
      ),
      new FavoriteMenuModelOne(
        'images/resturent2.png',
        AppLocalizations.of(context)!.alomda_restaurant,
        AppLocalizations.of(context)!.resturent_description,
        AppLocalizations.of(context)!.resturent_location,
      ),
      new FavoriteMenuModelOne(
        'images/resturent1.png',
        AppLocalizations.of(context)!.almalaki_restaurant,
        AppLocalizations.of(context)!.resturent_description,
        AppLocalizations.of(context)!.resturent_location,
      ),
      new FavoriteMenuModelOne(
        'images/resturent2.png',
        AppLocalizations.of(context)!.alomda_restaurant,
        AppLocalizations.of(context)!.resturent_description,
        AppLocalizations.of(context)!.resturent_location,
      ),
      new FavoriteMenuModelOne(
        'images/resturent1.png',
        AppLocalizations.of(context)!.almalaki_restaurant,
        AppLocalizations.of(context)!.resturent_description,
        AppLocalizations.of(context)!.resturent_location,
      ),
      new FavoriteMenuModelOne(
        'images/resturent2.png',
        AppLocalizations.of(context)!.alomda_restaurant,
        AppLocalizations.of(context)!.resturent_description,
        AppLocalizations.of(context)!.resturent_location,
      ),
    ];
    return favoriteMenuListOne;
  }

  List<FavoriteMenuModelTwo> favoriteMenuTwo(BuildContext context) {
    List<FavoriteMenuModelTwo> favoriteMenuListTwo = [

      new FavoriteMenuModelTwo(
        'images/example5.png',
        'images/resturent1.png',
        AppLocalizations.of(context)!.silver_coach_package,
        '130',
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
      new FavoriteMenuModelTwo(
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
    return favoriteMenuListTwo;
  }

}