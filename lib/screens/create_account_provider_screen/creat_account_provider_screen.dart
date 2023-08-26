import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/create_account_provider_screen/create_account_provider_controller.dart';
import 'package:project_one/screens/login_screen/login_screen.dart';
import '../../widgets/phone_number_formating.dart';

class CreateAccountProviderScreen extends StatefulWidget {
  const CreateAccountProviderScreen({Key? key}) : super(key: key);

  @override
  State<CreateAccountProviderScreen> createState() =>
      _CreateAccountProviderScreenState();
}

class _CreateAccountProviderScreenState
    extends State<CreateAccountProviderScreen> {

  @override
  Widget build(BuildContext context) {
    final isEnglish = Localizations.localeOf(context).languageCode == 'ar';
    final hintText = isEnglish ? 'xxxx xxx xx' : 'xx xxx xxxx';
    return GetBuilder<CreateAccountProviderController>(
      init: CreateAccountProviderController(),
      builder: (controller){
      return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.5,
          shadowColor: Color(0xffF8F8F8),
          title: Text(
            AppLocalizations.of(context)!.representative,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontFamily: 'Bahij',
              fontWeight: FontWeight.w600,
            ),
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
              SizedBox(
                height: 36,
              ),
              Center(
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
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.city,
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
                  controller: controller.cityController,
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Color(0xff595757),
                        size: 20,
                      ),
                    ),
                    errorText: controller.cityErorr,
                    filled: true,
                    fillColor: const Color(0xffF8F8F8),
                    hintText: AppLocalizations.of(context)!.please_city,
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
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.vehicle_type,
                    style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Bahij',
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: const Color(0xffF8F8F8),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            controller.buttonColor1 = Colors.transparent;
                            controller.buttonColor2 = const Color(0xff44515E);
                            controller.TextAndIconColor2 = Colors.white;
                            controller.TextAndIconColor1 = Colors.black;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            primary: controller.buttonColor2, elevation: 0),
                        child: Text(
                          AppLocalizations.of(context)!.car,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Bahij',
                            fontWeight: FontWeight.w500,
                            color: controller.TextAndIconColor2,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            controller.buttonColor1 = const Color(0xff44515E);
                            controller.buttonColor2 = Colors.transparent;
                            controller.TextAndIconColor1 = Colors.white;
                            controller.TextAndIconColor2 = Colors.black;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: controller.buttonColor1,
                          elevation: 0,
                        ),
                        child: Text(
                          AppLocalizations.of(context)!.bike,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Bahij',
                            fontWeight: FontWeight.w500,
                            color: controller.TextAndIconColor1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!.driver_license,
                    style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Bahij',
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          controller.uploadImage();
                          print('tapped');
                        },
                        child: DottedBorder(
                          color: Color(0xffDCDCDC),
                          strokeWidth: 1,
                          padding: EdgeInsets.all(0),
                          radius: Radius.circular(6),
                          dashPattern: [5,5],
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 19, vertical: 8),
                            decoration: BoxDecoration(
                                color: Color(0xffF8F8F8),
                                borderRadius: BorderRadius.circular(4)),
                            child: controller.image == null? Row(
                              children: [
                                SvgPicture.asset('images/upload.svg'),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  AppLocalizations.of(context)!.choose_file,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Bahij',
                                    color: Color(0xff595757),
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.07,
                                  ),
                                )
                              ],
                            ):Container(
                              height: 100,
                              width: 100,
                              child: Image.file(controller.image!, fit: BoxFit.fill,),),
                          ),
                        ),
                      ),
                      SizedBox(width: 2,),
                    ],
                  ),

                ],
              ),
              SizedBox(height: 24,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!.vehicle_registration,
                    style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Bahij',
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          controller.uploadImageTwo();
                        },
                        child: DottedBorder(
                          color: Color(0xffDCDCDC),
                          strokeWidth: 1,
                          padding: EdgeInsets.all(0),
                          radius: Radius.circular(6),
                          dashPattern: [5,5],
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 19, vertical: 8),
                            decoration: BoxDecoration(
                                color: Color(0xffF8F8F8),
                                borderRadius: BorderRadius.circular(4)),
                            child:
                            controller.image1 == null? Row(
                              children: [
                                SvgPicture.asset('images/upload.svg'),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  AppLocalizations.of(context)!.choose_file,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Bahij',
                                    color: Color(0xff595757),
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.07,
                                  ),
                                )
                              ],
                            ):Container(
                              height: 100,
                              width: 100,
                              child: Image.file(controller.image!, fit: BoxFit.fill,),),
                          ),
                        ),
                      ),
                      SizedBox(width: 2,),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 32,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox (
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
                    onPressed: () {},
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
                    onPressed: () {},
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
              SizedBox(height: 16,),
              Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff8AB23B),
                    elevation: 0,

                  ),
                  onPressed: () {
                    controller.performLogin(context);
                  },
                  child: Text(
                    AppLocalizations.of(context)!.apply,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Bahij',
                        color: Colors.white,
                        letterSpacing: 0.07,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(height: 16,),
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
