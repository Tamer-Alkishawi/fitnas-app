import 'package:get/get.dart';
import 'package:project_one/models/about_us_menu.dart';
import 'package:project_one/screens/app_info_screen/app_info_screen.dart';
import 'package:project_one/screens/faq_screen/faq_screen.dart';
import 'package:project_one/screens/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:project_one/screens/terms_and_conditions_screen/terms_and_conditions_screen.dart';

class AboutUsController extends GetxController{

  List<AboutUsMenuModel> aboutUsMenuList =[
    new AboutUsMenuModel('من نحن' ,'images/about.svg',true , AppInfoScreen()),
    new AboutUsMenuModel('الاسئلة الشائعة' ,'images/faq.svg',true , FAQScreen()),
    new AboutUsMenuModel('الشروط و الأحكام' ,'images/conditions.svg',true , TermsAndConditionsScreen()),
    new AboutUsMenuModel('سياسة الخصوصية' ,'images/privacy.svg',false , PrivacyPolicyScreen()),
  ];

  @override
  void onInit() {
    super.onInit();
    }

    @override
  void dispose() {
    super.dispose();
    super.onInit();
  }
}