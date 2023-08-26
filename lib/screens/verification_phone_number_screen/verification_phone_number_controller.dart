import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationPhoneNumberController extends GetxController{

  int start = 59;
  Timer? timer;
  TextEditingController textEditingController = TextEditingController();
  StreamController<ErrorAnimationType>? errorController;
  String currentText = '';

  @override
  void onInit() {
    startTimer();
    errorController = StreamController<ErrorAnimationType>();
    super.onInit();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    timer = Timer.periodic(oneSec, (Timer timer) {
        if (start == 0) {
          timer.cancel();
        } else {
          start--;
        }
        update();
      });

  }

  @override
  void dispose() {
    timer?.cancel();
    errorController!.close();
    super.dispose();
    super.onInit();
  }

}