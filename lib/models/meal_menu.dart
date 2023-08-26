import 'package:flutter/cupertino.dart';

class MealMenuModel{

  List<String> imagesUrl;
  String? mealName;
  String? calories;
  String? mealDiscreption;
  List<String> mealContent;
  String? carbs;
  String? fat;
  String? protine;
  List<String> iconUrl;
  List<String> title;

  MealMenuModel(
      this.imagesUrl,
      this.mealName,
      this.calories,
      this.mealDiscreption,
      this.mealContent,
      this.carbs,
      this.fat,
      this.protine,
      this.iconUrl,
      this.title,
      );
}