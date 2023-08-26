import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/about_us_screen/about_us_screen.dart';
import 'package:project_one/screens/add_credit_screen/add_credit_screen.dart';
import 'package:project_one/screens/add_location_screen/add_location_screen.dart';
import 'package:project_one/screens/address_screen/address_screen.dart';
import 'package:project_one/screens/app_info_screen/app_info_screen.dart';
import 'package:project_one/screens/app_reviewers_screen/app_reviews_screen.dart';
import 'package:project_one/screens/bottom_navigation_screen/bottom_navigation_screen.dart';
import 'package:project_one/screens/contact_us_screen/contact_us_screen.dart';
import 'package:project_one/screens/create_account_provider_screen/creat_account_provider_screen.dart';
import 'package:project_one/screens/create_account_two_screen/create_account_two.dart';
import 'package:project_one/screens/faq_screen/faq_screen.dart';
import 'package:project_one/screens/favorite_screen/favorite_screen.dart';
import 'package:project_one/screens/home_screen/home_screen.dart';
import 'package:project_one/screens/meal_screen/meal_screen.dart';
import 'package:project_one/screens/my_account_screen/my_account_screen.dart';
import 'package:project_one/screens/notification_screen/notifications_screen.dart';
import 'package:project_one/screens/on_boarding_screen/on_boarding_screen.dart';
import 'package:project_one/screens/order_details_screen/order_details_screen.dart';
import 'package:project_one/screens/order_screen/order_screen.dart';
import 'package:project_one/screens/package_details_screen/package_details_screen.dart';
import 'package:project_one/screens/packages_screen/packages_screen.dart';
import 'package:project_one/screens/pay_screen/pay_screen.dart';
import 'package:project_one/screens/personal_profile_screen/personal_profile_screen.dart';
import 'package:project_one/screens/plog_details_screen/plog_details_screen.dart';
import 'package:project_one/screens/plog_screen/plog_screen.dart';
import 'package:project_one/screens/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:project_one/screens/resturent_screen/resturent_screen.dart';
import 'package:project_one/screens/resturents_screen/resturents_screen.dart';
import 'package:project_one/screens/settings_screen/settings_screen.dart';
import 'package:project_one/screens/share_code_screen/share_code_screen.dart';
import 'package:project_one/screens/silver_coach_package_screen/silver_coach_package_screen.dart';
import 'package:project_one/screens/splash_screen/splash_screen.dart';
import 'package:project_one/screens/login_screen/login_screen.dart';
import 'package:project_one/screens/create_account_one_screen/create_account_one.dart';
import 'package:project_one/screens/terms_and_conditions_screen/terms_and_conditions_screen.dart';
import 'package:project_one/screens/verification_phone_number_screen/verification_phone_number.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:project_one/screens/wallet_screen/wallet_screen.dart';

 void main()  {
  runApp(const Fitnas());
}

class Fitnas extends StatelessWidget {
  const Fitnas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (BuildContext context, Widget? child) {
        final MediaQueryData data = MediaQuery.of(context);
        return MediaQuery(
          data: data.copyWith(
              textScaleFactor:  1
          ),
          child: child!,
        );
      },
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale:  const Locale('ar'),
        initialRoute: '/splash_screen',
      getPages: [
        GetPage(name: '/splash_screen', page: () => const SplashScreen(),),
        GetPage(name: '/on_boarding_screen', page: () => const OnBoardingScreen(),),
        GetPage(name: '/login_screen', page: () => const LoginScreen(),),
        GetPage(name: '/create_account_one', page: () => const CreateAccountOne(),),
        GetPage(name: '/create_account_two', page: () => CreateAccountTwo(),),
        GetPage(name: '/verification_phone_number', page: () => const VerificationPhoneNumber(),),
        GetPage(name: '/home_screen', page: () => const HomeScreen(),),
        GetPage(name: '/order_screen', page: () => const OrderScreen(),),
        GetPage(name: '/my_account_screen', page: () => const MyAccountScreen(),),
        GetPage(name: '/bottom_navigation_screen', page: () => const BottomNavigationScreen(),),
        GetPage(name: '/packages_screen', page: () => const PackagesScreen(),),
        GetPage(name: '/resturents_screen', page: () => const ResturentsScreen(),),
        GetPage(name: '/resturent_screen', page: () => const ResturentScreen(),),
        GetPage(name: '/meal_screen', page: () => const MealScreen(),),
        GetPage(name: '/silver_coach_package_screen', page: () => const SilverCoachPackageScreen(),),
        GetPage(name: '/package_details_screen', page: () => const PackageDetailsScreen(),),
        GetPage(name: '/pay_screen', page: () => const PayScreen(),),
        GetPage(name: '/share_code_screen', page: () => const ShareCodeScreen(),),
        GetPage(name: '/order_details_screen', page: () => const OrderDetailsScreen(),),
        GetPage(name: '/creat_account_provider_screen', page: () => const CreateAccountProviderScreen(),),
        GetPage(name: '/personal_profile_screen', page: () => const PersonalProfileScreen(),),
        GetPage(name: '/address_screen', page: () => const AddressScreen(),),
        GetPage(name: '/add_location_screen', page: () => const AddLocationScreen(),),
        GetPage(name: '/notifications_screen', page: () => const NotificationsScreen(),),
        GetPage(name: '/plog_screen', page: () => const PlogScreen(),),
        GetPage(name: '/plog_details_screen', page: () => const PlogDetailsScreen(),),
        GetPage(name: '/favorite_screen', page: () => const FavoriteScreen(),),
        GetPage(name: '/about_us_screen', page: () => const AboutUsScreen(),),
        GetPage(name: '/app_info_screen', page: () => const AppInfoScreen(),),
        GetPage(name: '/contact_us_screen', page: () => const ContactUsScreen(),),
        GetPage(name: '/faq_screen', page: () => const FAQScreen(),),
        GetPage(name: '/terms_and_conditions_screen', page: () => const TermsAndConditionsScreen(),),
        GetPage(name: '/privacy_policy_screen', page: () => const PrivacyPolicyScreen(),),
        GetPage(name: '/app_reviews_screen', page: () => const AppReviewsScreen(),),
        GetPage(name: '/settings_screen', page: () => const SettingsScreen(),),
        GetPage(name: '/wallet_screen', page: () => const WalletScreen(),),
        GetPage(name: '/add_credit_screen', page: () => const AddCreditScreen(),),
      ],
    );
  }
}
