import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/create_account_two_screen/create_account_two.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CreateAccountOneController extends GetxController {
  String? nameErorr;
  String? phoneNumberErorr;
  String? emailErorr;
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  bool isChecked = false;
  String selectedOption = 'one';


  @override
  void onInit() {
    nameController = TextEditingController();
    phoneNumberController = TextEditingController();
    emailController = TextEditingController();    super.onInit();
  }

  @override
  void dispose() {
    nameController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
    super.dispose();
    super.onInit();
  }

  void performLogin(BuildContext context) {
    if (checkData(context)) {
      next();
    }
  }

  bool checkData(BuildContext context) {
    _controllErorrs(context);
    if (nameController.text.isNotEmpty &&
        phoneNumberController.text.isNotEmpty &&
        emailController.text.isNotEmpty) {
      return true;
    }
    return false;
  }

  void next() {
    Get.to(CreateAccountTwo());
  }

  void _controllErorrs(BuildContext context) {

      nameErorr = nameController.text.isNotEmpty
          ? null
          : AppLocalizations.of(context)!.enter_full_name;
      phoneNumberErorr = phoneNumberController.text.isNotEmpty
          ? null
          : AppLocalizations.of(context)!.enter_phone_number;
      emailErorr = emailController.text.isNotEmpty
          ? null
          : AppLocalizations.of(context)!.enter_email;
    update();
  }

}
