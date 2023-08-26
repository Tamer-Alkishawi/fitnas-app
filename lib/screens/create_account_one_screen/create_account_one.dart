import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/create_account_one_screen/create_account_one_controller.dart';
import 'package:project_one/screens/create_account_two_screen/create_account_two.dart';
import 'package:project_one/screens/login_screen/login_screen.dart';
import 'package:project_one/screens/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:project_one/screens/terms_and_conditions_screen/terms_and_conditions_screen.dart';
import '../../widgets/phone_number_formating.dart';

class CreateAccountOne extends StatefulWidget {
  const CreateAccountOne({Key? key}) : super(key: key);

  @override
  State<CreateAccountOne> createState() => _CreateAccountOneState();
}

class _CreateAccountOneState extends State<CreateAccountOne> {
  @override
  Widget build(BuildContext context) {
    final isEnglish = Localizations.localeOf(context).languageCode == 'ar';
    final hintText = isEnglish ? 'xxxx xxx xx' : 'xx xxx xxxx';

    return GetBuilder<CreateAccountOneController>(
      init: CreateAccountOneController(),
      builder: (controller){
      return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.5,
          shadowColor: Color(0xffF8F8F8),
          title: Text(
            AppLocalizations.of(context)!.create_account,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16, color: Colors.black, fontFamily: 'Bahij', fontWeight: FontWeight.w600,),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 22,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Image(
                  image: AssetImage('images/fitnas1.png'),
                ),
              ),
              const SizedBox(
                height: 31,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.full_name,
                    style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Bahij',
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                child: TextField(
                  controller: controller.nameController,
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    errorText: controller.nameErorr,
                    filled: true,
                    fillColor: const Color(0xffF8F8F8),
                    hintText: AppLocalizations.of(context)!.please_full_name,
                    hintStyle: const TextStyle(
                        color: Color(0xffB5BEC8),
                        fontSize: 12,
                        fontFamily: 'Bahij',
                        letterSpacing: 0.07),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.red,
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 15,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.phone_number,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Bahij',
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                child: TextField(
                  controller: controller.phoneNumberController,
                  keyboardType: TextInputType.phone,
                  textAlign: TextAlign.start,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    PhoneNumberFormatter(),
                  ],
                  decoration: InputDecoration(
                    errorText: controller.phoneNumberErorr,
                    suffixIcon: Container(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                            size: 16,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 24,
                            width: 24,
                            child: const Image(
                              image: AssetImage('images/saudi arabia.png'),
                            ),
                          ),


                        ],
                      ),
                    ),
                    filled: true,
                    fillColor: const Color(0xffF8F8F8),
                    hintText: hintText,
                    hintStyle: const TextStyle(
                        color: Color(0xffB5BEC8),
                        fontSize: 12,
                        fontFamily: 'Bahij',
                        letterSpacing: 4),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.red,
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: const EdgeInsets.only(
                        left: 16, top: 15, bottom: 16, right: 14),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.email,
                    style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Bahij',
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                child: TextField(
                  controller: controller.emailController,
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    errorText: controller.emailErorr,
                    filled: true,
                    fillColor: const Color(0xffF8F8F8),
                    hintText: AppLocalizations.of(context)!.please_email,
                    hintStyle: const TextStyle(
                        color: Color(0xffB5BEC8),
                        fontSize: 12,
                        fontFamily: 'Bahij',
                        letterSpacing: 0.07),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.red,
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 15,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    side: const BorderSide(
                      color: Color(0xff595757),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    activeColor: const Color(0xff8AB23B),
                    value: controller.isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        controller.isChecked = value ?? false;
                      });
                    },
                  ),
                  Text(
                    AppLocalizations.of(context)!.i_agree,
                    style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xff595757),
                        fontFamily: 'Bahij',
                        letterSpacing: 0.07),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(TermsAndConditionsScreen());
                    },
                    child: Text(
                      AppLocalizations.of(context)!.terms_of_use,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        letterSpacing: 0.07,
                        fontFamily: 'Bahij',
                      ),
                    ),
                  ),
                  Text(
                    AppLocalizations.of(context)!.and,
                    style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xff595757),
                        fontFamily: 'Bahij',
                        letterSpacing: 0.07),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(PrivacyPolicyScreen());
                    },
                    child: Text(
                      AppLocalizations.of(context)!.privacy_policy,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        letterSpacing: 0.07,
                        fontFamily: 'Bahij',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              isEnglish
                  ? Container(
                height: 55,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff8AB23B),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  onPressed: () {
                    controller.performLogin(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Text(
                            AppLocalizations.of(context)!.next,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 14,
                                fontFamily: 'Bahij',
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                    ],
                  ),
                ),
              )
                  : Container(
                height: 55,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff8AB23B),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  onPressed: () {
                    controller.performLogin(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Text(
                            AppLocalizations.of(context)!.next,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 14,
                                fontFamily: 'Bahij',
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppLocalizations.of(context)!.have_an_account,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xff595757),
                      fontFamily: 'Bahij',
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(LoginScreen());
                    },
                    child: Text(
                      AppLocalizations.of(context)!.login,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontFamily: 'Bahij',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },);
  }
}
