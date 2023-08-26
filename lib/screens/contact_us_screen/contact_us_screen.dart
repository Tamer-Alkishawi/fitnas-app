import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/contact_us_screen/contact_us_controller.dart';
import '../../widgets/phone_number_formating.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}
class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContactUsController>(
      init: ContactUsController(),
      builder: (controller){
      return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.5,
          shadowColor: Color(0xffF8F8F8),
          title: Text(
            'تواصل معنا',
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
        body: Stack(
          children: [
            ListView(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 83,
                  height: 83,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(138, 178, 59, 0.11),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Container(
                      height: 36,
                      width: 36,
                      child: Image.asset('images/phone.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 29,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        child: TextField(
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xffF8F8F8),
                            hintText: 'الاسم كاملا',
                            hintStyle: const TextStyle(
                                color: Color(0xff8D8D8D),
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
                      SizedBox(height: 12,),
                      Container(
                        width: double.infinity,
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          textAlign: TextAlign.start,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            PhoneNumberFormatter(),
                          ],
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xffF8F8F8),
                            hintText: 'رقم الجوال',
                            hintStyle: const TextStyle(
                              color: Color(0xff8D8D8D),
                              fontSize: 12,
                              fontFamily: 'Bahij',
                              letterSpacing: 0.07,
                            ),
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
                      SizedBox(height: 12,),
                      Container(
                        width: double.infinity,
                        child: TextField(
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
                            filled: true,
                            fillColor: const Color(0xffF8F8F8),
                            hintText: 'الموضوع',
                            hintStyle: const TextStyle(
                                color: Color(0xff8D8D8D),
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
                      SizedBox(height: 12,),
                      TextField(
                        controller: controller.textEditingController,
                        maxLines: 5,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffF8F8F8),
                          hintText: 'نص الرسالة',
                          hintStyle:  TextStyle(
                              fontSize: 12,
                              fontFamily: 'Bahij',
                              fontWeight: FontWeight.w600,
                              color: Color(0xff8D8D8D)
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
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
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 100,),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 88,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color:
                      const Color(0xff000000).withOpacity(0.08),
                      spreadRadius: 0,
                      blurRadius: 50,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Center(
                  child: Container(
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8)),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xff8AB23B),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('images/send.svg'),
                          SizedBox(width: 12,),
                          Text(
                            'ارسال',
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                                fontSize: 14,
                                fontFamily: 'Bahij',
                                color: Colors.white,
                                letterSpacing: 0.07,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    },);
  }
}
