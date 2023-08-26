import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:project_one/models/resturents_menu.dart';

class ResturentsController extends GetxController {

  List<ResturentsMenuModel> ResturentsMenu(BuildContext context) {
    List<ResturentsMenuModel> ResturentsMenuList = [
      new ResturentsMenuModel(
        'images/resturent1.png',
        AppLocalizations.of(context)!.almalaki_restaurant,
        AppLocalizations.of(context)!.resturent_description,
        AppLocalizations.of(context)!.resturent_location,
      ),
      new ResturentsMenuModel(
        'images/resturent2.png',
        AppLocalizations.of(context)!.alomda_restaurant,
        AppLocalizations.of(context)!.resturent_description,
        AppLocalizations.of(context)!.resturent_location,
      ),
      new ResturentsMenuModel(
        'images/resturent1.png',
        AppLocalizations.of(context)!.almalaki_restaurant,
        AppLocalizations.of(context)!.resturent_description,
        AppLocalizations.of(context)!.resturent_location,
      ),
      new ResturentsMenuModel(
        'images/resturent2.png',
        AppLocalizations.of(context)!.alomda_restaurant,
        AppLocalizations.of(context)!.resturent_description,
        AppLocalizations.of(context)!.resturent_location,
      ),
      new ResturentsMenuModel(
        'images/resturent1.png',
        AppLocalizations.of(context)!.almalaki_restaurant,
        AppLocalizations.of(context)!.resturent_description,
        AppLocalizations.of(context)!.resturent_location,
      ),
      new ResturentsMenuModel(
        'images/resturent2.png',
        AppLocalizations.of(context)!.alomda_restaurant,
        AppLocalizations.of(context)!.resturent_description,
        AppLocalizations.of(context)!.resturent_location,
      ),
    ];
    return ResturentsMenuList;
  }
}
