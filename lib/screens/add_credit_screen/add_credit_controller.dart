import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AddCreditController extends GetxController{
  int selected = 0;
   TextEditingController textEditingController= TextEditingController();
   TextEditingController dateController= TextEditingController();

  @override
  void onInit() {
    textEditingController = TextEditingController();
    dateController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    textEditingController.dispose();
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


}