import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_one/models/address_menu.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddressController extends GetxController {
  List<AddressMenuModel> addressMenu(BuildContext context) {
    List<AddressMenuModel> addressMenuModelList = [
      new AddressMenuModel(
        'images/house.svg',
        AppLocalizations.of(context)!.address_one_home,
        AppLocalizations.of(context)!.address_screen_location,
        true,
      ),
      new AddressMenuModel(
        'images/bag.svg',
        AppLocalizations.of(context)!.work,
        AppLocalizations.of(context)!.address_screen_location,
        false,
      ),
    ];

    return addressMenuModelList;
  }
}
