import 'dart:ui';

class AddLocationMenuModel{

  String svgUrl1;
  String svgUrl2;
  String title;
  bool isActive;
  VoidCallback onTap;

  AddLocationMenuModel(
      this.svgUrl1, this.svgUrl2, this.title, this.isActive, this.onTap);
}