import 'dart:async';

import 'package:get/get.dart';
import 'package:project_one/screens/login_screen/login_screen.dart';
import 'package:project_one/screens/on_boarding_screen/on_boarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController{

  @override
  void onInit() {
    startTimer();
    super.onInit();
  }

  void startTimer() {
    Timer(Duration(seconds: 3), () {
      checkFirstTime();

    });
  }
  Future<void> checkFirstTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirstTime = prefs.getBool('isFirstTime') ?? true;

    if (isFirstTime) {
      await prefs.setBool('isFirstTime', false);
      Get.off(OnBoardingScreen());
    } else {
      Get.off(LoginScreen());
    }
  }


}