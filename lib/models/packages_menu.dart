import 'dart:ui';

class PackageMenuModelOne{

  String? imageUrl1;
  String? imageUrl2;
  String? hint;
  String? days;
  String? numberOfDays;
  String? price;
  String? resturentName;
  double? verticalPadding;
  double? imageHeight;
  bool? rateVisiblity;
  bool? ratingVisiblity;
  bool? resturentNameVisibility;
  bool? favoriteIconVisibility;

  PackageMenuModelOne(
      this.imageUrl1,
      this.imageUrl2,
      this.hint,
      this.days,
      this.numberOfDays,
      this.price,
      this.resturentName,
      this.verticalPadding,
      this.imageHeight,
      this.rateVisiblity,
      this.ratingVisiblity,
      this.resturentNameVisibility,
      this.favoriteIconVisibility);
}
class PackageMenuModelTwo{

  String text;
  bool isClicked;
  VoidCallback onTap;

  PackageMenuModelTwo(this.text, this.isClicked, this.onTap);
}