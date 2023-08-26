import 'package:flutter/material.dart';

class MyAccountMenuModelOne{

  String? price;
  String? calories;
  MyAccountMenuModelOne(this.price, this.calories);
}

class MyAccountMenuModelTwo{

  String? title ;
  String? svgUrl ;
  bool? dividerVisibility ;
  Widget? route ;

  MyAccountMenuModelTwo(
      this.title, this.svgUrl, this.dividerVisibility, this.route);
}

