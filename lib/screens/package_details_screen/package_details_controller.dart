import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:project_one/models/package_details_menu.dart';

class PackageDetailsController extends GetxController{

  int x = 2;
  Color buttonColor1 = Colors.transparent;
  Color buttonColor2 = const Color(0xff44515E);
  Color TextAndIconColor1 = Colors.black;
  Color TextAndIconColor2 = Colors.white;
  bool widgetVisible = false;
  TextEditingController dateController = TextEditingController();
  TextEditingController textEditingController = TextEditingController();
  String selectedValue = "radio value";
  bool tapped1 = false;
  bool tapped2 = false;
  bool tapped3 = false;
  bool tapped4 = false;
  bool tapped5 = false;
  bool tapped6 = false;



  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
        dateController.text = DateFormat('yyyy-MM-dd').format(picked);
      update();
    }
  }

  @override
  void onInit() {
    dateController = TextEditingController();
    textEditingController = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    dateController.dispose();
    textEditingController.dispose();
    super.dispose();
    super.onInit();
  }


  List<PackageDetailsMenuModel> PackageDetailsMenu(BuildContext context) {
    List<PackageDetailsMenuModel> PackageDetailsMenuList = [
      new PackageDetailsMenuModel(
        'images/example5.png',
        'images/resturent1.png',
        AppLocalizations.of(context)!.silver_coach_package,
        '20',
        AppLocalizations.of(context)!.day,
        '130.00',
        AppLocalizations.of(context)!.almalaki_restaurant,
        11,
        150,
        false,
        false,
        true,
        false,
      ),

    ];
    return PackageDetailsMenuList;
  }

}