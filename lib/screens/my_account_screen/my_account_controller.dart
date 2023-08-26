import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_one/models/my_account_menu.dart';
import 'package:project_one/screens/about_us_screen/about_us_screen.dart';
import 'package:project_one/screens/address_screen/address_screen.dart';
import 'package:project_one/screens/app_reviewers_screen/app_reviews_screen.dart';
import 'package:project_one/screens/contact_us_screen/contact_us_screen.dart';
import 'package:project_one/screens/create_account_provider_screen/creat_account_provider_screen.dart';
import 'package:project_one/screens/favorite_screen/favorite_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:project_one/screens/notification_screen/notifications_screen.dart';
import 'package:project_one/screens/personal_profile_screen/personal_profile_screen.dart';
import 'package:project_one/screens/plog_screen/plog_screen.dart';

class MyAccountController extends GetxController {
  bool tapped = false;
  List<MyAccountMenuModelOne> myAccountMenuListOne = [
    new MyAccountMenuModelOne('0.00', '11264'),
  ];

  List<MyAccountMenuModelTwo> MyAccountMenuTwo(BuildContext context){

     List<MyAccountMenuModelTwo> myAccountMenuListTwo = [
      new MyAccountMenuModelTwo(
        AppLocalizations.of(context)!.personal_profile,
        'images/user.svg',
        true,
        PersonalProfileScreen(),
      ),
      new MyAccountMenuModelTwo(
      AppLocalizations.of(context)!
          .addresses,
        'images/location.svg',
        true,
        AddressScreen(),
      ),
      new MyAccountMenuModelTwo(
        AppLocalizations.of(context)!.notifications,
        'images/notification.svg',
        true,
        NotificationsScreen(),
      ),
      new MyAccountMenuModelTwo(
        AppLocalizations.of(context)!.blog,
        'images/blog.svg',
        true,
        PlogScreen(),
      ),
      new MyAccountMenuModelTwo(
        AppLocalizations.of(context)!.favorite,
        'images/heart2.svg',
        true,
        FavoriteScreen(),
      ),
      new MyAccountMenuModelTwo(
        AppLocalizations.of(context)!.about_app,
        'images/about.svg',
        true,
        AboutUsScreen(),
      ),
      new MyAccountMenuModelTwo(
        AppLocalizations.of(context)!.invite_friend,
        'images/share2.svg',
        true,
        null,
      ),
      new MyAccountMenuModelTwo(
        AppLocalizations.of(context)!.contact_us,
        'images/phone.svg',
        true,
        ContactUsScreen(),
      ),
      new MyAccountMenuModelTwo(
        AppLocalizations.of(context)!.service_provider,
        'images/sign_as_a_resturent.svg',
        true,
        null,
      ),
      new MyAccountMenuModelTwo(
        AppLocalizations.of(context)!.rate_app,
        'images/star2.svg',
        false,
        AppReviewsScreen(),
      ),
    ];
     return myAccountMenuListTwo;
  }

  List<MyAccountMenuModelTwo> MyAccountMenuThree(BuildContext context){

     List<MyAccountMenuModelTwo> myAccountMenuListThree = [
      new MyAccountMenuModelTwo(
        AppLocalizations.of(context)!.blog,
        'images/blog.svg',
        true,
        PlogScreen(),
      ),
      new MyAccountMenuModelTwo(
        AppLocalizations.of(context)!.about_app,
        'images/about.svg',
        true,
        AboutUsScreen(),
      ),
      new MyAccountMenuModelTwo(
        AppLocalizations.of(context)!.invite_friend,
        'images/share2.svg',
        true,
        null,
      ),
      new MyAccountMenuModelTwo(
        AppLocalizations.of(context)!.contact_us,
        'images/phone.svg',
        true,
        ContactUsScreen(),
      ),
      new MyAccountMenuModelTwo(
        AppLocalizations.of(context)!.service_provider,
        'images/sign_as_a_resturent.svg',
        true,
        null,
      ),
      new MyAccountMenuModelTwo(
        AppLocalizations.of(context)!.representative,
        'images/sign_as_a_provider.svg',
        true,
        CreateAccountProviderScreen(),
      ),
      new MyAccountMenuModelTwo(
        AppLocalizations.of(context)!.rate_app,
        'images/star2.svg',
        false,
        AppReviewsScreen(),
      ),
    ];
     return myAccountMenuListThree;
  }
}
