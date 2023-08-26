import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:project_one/screens/share_code_screen/share_code_screen.dart';

class PayController extends GetxController{

  String selectedValue = "radio value";
  String? nameErorr;
  String? numberErorr;
  String? dateErorr;
  String? cvvErorr;
  TextEditingController numberEditingController = TextEditingController();
  TextEditingController nameEditingController = TextEditingController();
  TextEditingController cvvEditingController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  bool radioSelected = true;

  @override
  void onInit() {
    numberEditingController = TextEditingController();
    nameEditingController = TextEditingController();
    cvvEditingController = TextEditingController();
    dateController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    numberEditingController.dispose();
    nameEditingController.dispose();
    cvvEditingController.dispose();
    dateController.dispose();
    super.dispose();
    super.onInit();
  }

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
        dateController.text = DateFormat('yyyy-MM').format(picked);
        update();
    }
  }


  void performLogin(BuildContext context) {
    if (checkData(context)) {
      login();
    }
  }

  bool checkData(BuildContext context) {
    controllErorrs(context);
    if (nameEditingController.text.isNotEmpty &&
        numberEditingController.text.isNotEmpty &&
        cvvEditingController.text.isNotEmpty &&
        dateController.text.isNotEmpty
    ) {
      return true;
    }
    return false;
  }

  void login() {
    Get.to(ShareCodeScreen());
  }

  void controllErorrs(BuildContext context) {
      nameErorr = nameEditingController.text.isNotEmpty
          ? null
          : 'ادخل اسم صاحب البطاقة';
      numberErorr = numberEditingController.text.isNotEmpty
          ? null
          : 'ادخل رقم البطاقة';
      cvvErorr = cvvEditingController.text.isNotEmpty
          ? null
          : 'ادخل رقم CVV';
      dateErorr = dateController.text.isNotEmpty
          ? null
          : 'ادخل التاريخ';
    update();
  }


}