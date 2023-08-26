class FavoriteMenuModelOne{

  String imageUrl;
  String resturentName;
  String resturentdescription;
  String resturentlocation;

  FavoriteMenuModelOne(this.imageUrl, this.resturentName,
      this.resturentdescription, this.resturentlocation);
}

class FavoriteMenuModelTwo{

  String imageUrl1;
  String imageUrl2;
  String hint;
  String days;
  String numberOfDays;
  String price;
  String resturentName;
  double verticalPadding;
  double imageHeight;
  bool rateVisiblity;
  bool ratingVisiblity;
  bool resturentNameVisibility;
  bool favoriteIconVisibility;

  FavoriteMenuModelTwo(
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