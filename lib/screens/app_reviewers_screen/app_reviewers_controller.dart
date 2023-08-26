import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppReviewersController extends GetxController{

  TextEditingController textEditingController = TextEditingController();

  @override
  void onInit() {
    textEditingController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
    super.onInit();
  }
}