import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:project_one/screens/bottom_navigation_screen/bottom_navigation_screen.dart';
import 'package:project_one/screens/verification_phone_number_screen/verification_phone_number_controller.dart';

class VerificationPhoneNumber extends StatefulWidget {
  const VerificationPhoneNumber({Key? key}) : super(key: key);

  @override
  State<VerificationPhoneNumber> createState() =>
      _VerificationPhoneNumberState();
}

class _VerificationPhoneNumberState extends State<VerificationPhoneNumber> {
  @override
  Widget build(BuildContext context) {

    final isEnglish = Localizations.localeOf(context).languageCode == 'ar';
    String phoneNumber = ModalRoute.of(context)!.settings.arguments as String;

    return GetBuilder<VerificationPhoneNumberController>(
      init: VerificationPhoneNumberController(),
      builder: (controller){
      return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.5,
          shadowColor: Color(0xffF8F8F8),
          title: Text(
            AppLocalizations.of(context)!.account_verefication,
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
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            width: double.infinity,
            child: ListView(
              children: [
                const SizedBox(
                  height: 46,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.confirm_phone_number,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontFamily: 'Bahij',
                        letterSpacing: 0.07,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        AppLocalizations.of(context)!.enter_code,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Color(0xff606E7D),
                          fontFamily: 'Bahij',
                          letterSpacing: 0.07,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      phoneNumber,
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xff4F6621),
                        fontFamily: 'Bahij',
                        letterSpacing: 0.07,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 35),
                  child: PinCodeTextField(
                    autoFocus: true,
                    showCursor: false,
                    appContext: context,
                    length: 4,
                    pinTheme: PinTheme(
                      selectedFillColor: const Color(0xffF4F4F4),
                      inactiveFillColor: const Color(0xffF4F4F4),
                      activeColor: const Color(0xffF4F4F4),
                      selectedColor: const Color(0xffF4F4F4),
                      inactiveColor: const Color(0xffF4F4F4),
                      activeFillColor: const Color(0xffF4F4F4),
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(11),
                      fieldHeight: 55,
                      fieldWidth: 55,
                    ),
                    animationDuration: const Duration(milliseconds: 300),
                    enableActiveFill: true,
                    errorAnimationController: controller.errorController,
                    controller: controller.textEditingController,
                    keyboardType: TextInputType.text,
                    onCompleted: (v) {
                      Get.to(BottomNavigationScreen());
                    },
                    onChanged: (value) {
                      setState(() {
                        controller.currentText = value;
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                isEnglish
                    ? Center(
                  child: Container(
                    height: 40,
                    width: 140,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xff8AB23B),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                      ),
                      onPressed: () {
                        Get.to(BottomNavigationScreen());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: const Color(0xff4F6621),
                            ),
                            child: const Icon(
                              Icons.arrow_back_ios_rounded,
                              size: 10,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            AppLocalizations.of(context)!.code_confirmation,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontFamily: 'Bahij',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                    : Center(
                  child: Container(
                    height: 40,
                    width: 140,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xff8AB23B),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                      ),
                      onPressed: () {
                        Get.off(BottomNavigationScreen());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.code_confirmation,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontFamily: 'Bahij',
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: const Color(0xff4F6621),
                            ),
                            child: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 10,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage('images/clock.png'),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 40,
                      child: Text(
                        controller.start < 10 ? '00:0${controller.start}' : '00:${controller.start}',
                        style: GoogleFonts.urbanist(
                          fontSize: 14,
                          color: const Color(0xffB5BEC8),
                        ),
                      ),
                    ),


                  ],
                ),
                const SizedBox(
                  height: 23,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.didnt_recive_code,
                      textAlign: TextAlign.end,
                      style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Bahij',
                        fontWeight: FontWeight.w500,
                        color: Color(0xffB5BEC8),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        AppLocalizations.of(context)!.resend,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: 'Bahij',
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },);
  }
}
