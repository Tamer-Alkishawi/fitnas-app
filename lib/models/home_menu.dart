
class ResturentMenuModel{

  String? imageUrl;
  String? resturentName;
  String? description;
  String? address;

  ResturentMenuModel(
      this.imageUrl, this.resturentName, this.description, this.address);
}

class SilverPackageMenuModel{

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

  SilverPackageMenuModel(
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