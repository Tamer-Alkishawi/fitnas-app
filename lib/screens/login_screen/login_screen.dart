import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/bottom_navigation_screen/bottom_navigation_screen.dart';
import 'package:project_one/screens/create_account_one_screen/create_account_one.dart';
import 'package:project_one/screens/login_screen/login_controller.dart';
import '../../widgets/phone_number_formating.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final isEnglish = Localizations.localeOf(context).languageCode == 'ar';
    final hintText = isEnglish ? 'xx xxx xxxx' : 'xxxx xxx xx';

    return GetBuilder<LoginController>(
        init: LoginController(),
        builder: (controller){
      return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.5,
          shadowColor: const Color(0xffF8F8F8),
          title: Text(
            AppLocalizations.of(context)!.login,
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
                height: 48,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.welcome_back,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Bahij',
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.login_hint,
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Bahij',
                      color: Color(0xff606E7D),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
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
                    errorText:  controller.phoneNumberErorr ,
                    suffixIcon: Container(
                      padding: const EdgeInsets.only(left: 16, right: 16),
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
                      top: 15, bottom: 16, right: 14, left: 14,),
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xff8AB23B),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        onPressed: () {
                          controller.performLogin(context);
                        },
                        child: Text(
                          AppLocalizations.of(context)!.login,
                          style: const TextStyle(
                              fontSize: 14,
                              fontFamily: 'Bahij',
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 55,
                    height: 55,
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xffF8F8F8),
                        elevation: 0,
                      ),
                      onPressed: () {},
                      child: const Image(
                        image: AssetImage('images/fingerprint.png'),
                      ),
                    ),
                  ),


                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppLocalizations.of(context)!.dont_have_account,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xff595757),
                      fontFamily: 'Bahij',
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(CreateAccountOne());
                    },
                    child: Text(
                      AppLocalizations.of(context)!.create_account,
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
              const SizedBox(
                height: 140,
              ),
              Container(
                width: 151,
                height: 45,
                padding: const EdgeInsets.symmetric(horizontal: 104),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xffF4F4F4),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    onPressed: () {
                      Get.to(BottomNavigationScreen());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.arrow_back,
                          size: 18,
                          color: Color(0xff44515E),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          AppLocalizations.of(context)!.login_as_visitor,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Color(0xff44515E),
                            fontFamily: 'Bahij',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      );
    });
  }
}
