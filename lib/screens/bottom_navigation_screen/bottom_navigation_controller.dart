import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/home_screen/home_screen.dart';
import 'package:project_one/screens/my_account_screen/my_account_screen.dart';
import 'package:project_one/screens/order_screen/order_screen.dart';

class BottomNavigationController extends GetxController{

  int currentIndex = 0;
  final List<Widget> screens = [
    const HomeScreen(),
    const OrderScreen(),
    const MyAccountScreen(),


  ];

}