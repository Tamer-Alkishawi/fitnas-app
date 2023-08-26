import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/verification_phone_number_screen/verification_phone_number.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginController extends GetxController {
  String? phoneNumberErorr;
  TextEditingController phoneNumberController = TextEditingController();

  @override
  void onInit() {
    phoneNumberController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    phoneNumberController.dispose();
    super.dispose();
    super.onInit();
  }

  void performLogin(BuildContext context) {
    if (checkData(context)) {
      login();
    }
  }

  bool checkData(BuildContext context) {
    _controllErorrs(context);
    if (phoneNumberController.text.isNotEmpty) {
      return true;
    }
    return false;
  }

  void login() {
    String phoneNumber = phoneNumberController.text;
    Get.to(VerificationPhoneNumber(), arguments: phoneNumber);
  }

  void _controllErorrs(BuildContext context) {
    phoneNumberErorr = phoneNumberController.text.isNotEmpty
          ? null
          : AppLocalizations.of(context)!.enter_phone_number;
    update();

  }
}
