class MainResponse {
  Status status;
  Data data;
  dynamic paging;

  MainResponse({required this.status, required this.data, this.paging});

  factory MainResponse.fromJson(Map<String, dynamic> json) {
    return MainResponse(
      status: Status.fromJson(json['status']),
      data: Data.fromJson(json['data']),
      paging: json['paging'],
    );
  }
}

class Status {
  String status;
  List<dynamic> message;
  int code;

  Status({required this.status, required this.message, required this.code});

  factory Status.fromJson(Map<String, dynamic> json) {
    return Status(
      status: json['status'],
      message: json['message'],
      code: json['code'],
    );
  }
}

class Data {
  List<Advertisement> advertisements;
  List<PackageCategory> packageCategories;
  List<DailyPackage> dailyPackages;
  List<Restaurant> restaurants;

  Data({
    required this.advertisements,
    required this.packageCategories,
    required this.dailyPackages,
    required this.restaurants,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      advertisements: (json['Advertisements'] as List)
          .map((ad) => Advertisement.fromJson(ad))
          .toList(),
      packageCategories: (json['PackageCategories'] as List)
          .map((pc) => PackageCategory.fromJson(pc))
          .toList(),
      dailyPackages: (json['DailyPackages'] as List)
          .map((dp) => DailyPackage.fromJson(dp))
          .toList(),
      restaurants: (json['Resturants'] as List)
          .map((r) => Restaurant.fromJson(r))
          .toList(),
    );
  }
}

class Advertisement {
  int id;
  String name;
  String image;
  int type;
  String reference;
  int order;

  Advertisement({
    required this.id,
    required this.name,
    required this.image,
    required this.type,
    required this.reference,
    required this.order,
  });

  factory Advertisement.fromJson(Map<String, dynamic> json) {
    return Advertisement(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      type: json['type'],
      reference: json['reference'],
      order: json['order'],
    );
  }
}

class PackageCategory {
  int id;
  String name;
  String image;
  String maxDays;
  bool isActive;

  PackageCategory({
    required this.id,
    required this.name,
    required this.image,
    required this.maxDays,
    required this.isActive,
  });

  factory PackageCategory.fromJson(Map<String, dynamic> json) {
    return PackageCategory(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      maxDays: json['max_days'],
      isActive: json['is_active'],
    );
  }
}

class DailyPackage {
  int id;
  Restaurant restaurant;
  String name;
  String description;
  PackageCategory packageCategory;
  String plan;
  int days;
  String prePrice;
  String price;
  String preOfferPrice;
  String offerPrice;
  List<dynamic> alergics;
  List<int> availableDays;
  DietSystem dietSystem;
  int status;
  String boxWidth;
  String boxHeight;
  String boxLength;
  List<PackageMedia> packageMedia;
  bool isFav;
  int rate;

  DailyPackage({
    required this.id,
    required this.restaurant,
    required this.name,
    required this.description,
    required this.packageCategory,
    required this.plan,
    required this.days,
    required this.prePrice,
    required this.price,
    required this.preOfferPrice,
    required this.offerPrice,
    required this.alergics,
    required this.availableDays,
    required this.dietSystem,
    required this.status,
    required this.boxWidth,
    required this.boxHeight,
    required this.boxLength,
    required this.packageMedia,
    required this.isFav,
    required this.rate,
  });

  factory DailyPackage.fromJson(Map<String, dynamic> json) {
    return DailyPackage(
      id: json['id'],
      restaurant: Restaurant.fromJson(json['Restaurant']),
      name: json['name'],
      description: json['description'],
      packageCategory:
      PackageCategory.fromJson(json['package_category']),
      plan: json['plan'],
      days: json['days'],
      prePrice: json['pre_price'],
      price: json['price'],
      preOfferPrice: json['pre_offer_price'],
      offerPrice: json['offer_price'],
      alergics: json['alergics'],
      availableDays: List<int>.from(json['available_days']),
      dietSystem: DietSystem.fromJson(json['diet_system']),
      status: json['status'],
      boxWidth: json['box_width'],
      boxHeight: json['box_height'],
      boxLength: json['box_lenght'],
      packageMedia: (json['package_media'] as List)
          .map((media) => PackageMedia.fromJson(media))
          .toList(),
      isFav: json['is_fav'],
      rate: json['rate'],
    );
  }
}

class Restaurant {
  int id;
  String name;
  String contactName;
  String bio;
  String email;
  String mobile;
  Country country;
  City? city;
  String logo;
  int status;
  int availability;
  Address address;
  bool isFav;
  int packagesCount;
  int mealsCount;
  bool isAdvertised;
  int rate;

  Restaurant({
    required this.id,
    required this.name,
    required this.contactName,
    required this.bio,
    required this.email,
    required this.mobile,
    required this.country,
    required this.city,
    required this.logo,
    required this.status,
    required this.availability,
    required this.address,
    required this.isFav,
    required this.packagesCount,
    required this.mealsCount,
    required this.isAdvertised,
    required this.rate,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) {
    return Restaurant(
      id: json['id'],
      name: json['name'],
      contactName: json['contact_name'],
      bio: json['bio'],
      email: json['email'],
      mobile: json['mobile'],
      country: Country.fromJson(json['country']),
      city: json['city'] != null ? City.fromJson(json['city']) : null,
      logo: json['logo'],
      status: json['status'],
      availability: json['availability'],
      address: Address.fromJson(json['address']),
      isFav: json['is_fav'],
      packagesCount: json['packages_count'],
      mealsCount: json['meals_count'],
      isAdvertised: json['is_advertised'],
      rate: json['rate'],
    );
  }
}

class Country {
  int id;
  String name;
  String flag;
  String countryCode;

  Country({
    required this.id,
    required this.name,
    required this.flag,
    required this.countryCode,
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      id: json['id'],
      name: json['name'],
      flag: json['flag'],
      countryCode: json['country_code'],
    );
  }
}

class City {
  int id;
  String name;

  City({required this.id, required this.name});

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      id: json['id'],
      name: json['name'],
    );
  }
}

class Address {
  int id;
  int providerId;
  String name;
  String address;
  String lat;
  String long;
  bool isActive;

  Address({
    required this.id,
    required this.providerId,
    required this.name,
    required this.address,
    required this.lat,
    required this.long,
    required this.isActive,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      id: json['id'],
      providerId: json['provider_id'],
      name: json['name'],
      address: json['address'],
      lat: json['lat'],
      long: json['long'],
      isActive: json['is_active'],
    );
  }
}

class DietSystem {
  int id;
  String name;

  DietSystem({required this.id, required this.name});

  factory DietSystem.fromJson(Map<String, dynamic> json) {
    return DietSystem(
      id: json['id'],
      name: json['name'],
    );
  }
}

class PackageMedia {
  int id;
  int packageId;
  String image;
  int isActive;

  PackageMedia({
    required this.id,
    required this.packageId,
    required this.image,
    required this.isActive,
  });

  factory PackageMedia.fromJson(Map<String, dynamic> json) {
    return PackageMedia(
      id: json['id'],
      packageId: json['package_id'],
      image: json['image'],
      isActive: json['is_active'],
    );
  }
}
