import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/pay_screen/pay_controller.dart';
import 'package:project_one/screens/share_code_screen/share_code_screen.dart';
import '../../widgets/card_formating.dart';

class PayScreen extends StatefulWidget {
  const PayScreen({Key? key}) : super(key: key);

  @override
  State<PayScreen> createState() => _PayScreenState();
}

class _PayScreenState extends State<PayScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PayController>(
      init: PayController() ,
      builder: (controller){
      return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.5,
          shadowColor: Color(0xffF8F8F8),
          title: Text(
            'الدفع',
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
            Padding(
              padding: const EdgeInsets.only(bottom: 88),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 18),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color(0xffF8F8F8),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio(
                                  fillColor: MaterialStateProperty.all(
                                      Color(0xff8AB23B)),
                                  value: "radio value",
                                  groupValue: controller.selectedValue,
                                  onChanged: (String? value) {
                                    setState(() {
                                      controller.selectedValue = value ?? "radio value";
                                      controller.radioSelected = !controller.radioSelected;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                SvgPicture.asset('images/wallet2.svg'),
                                SizedBox(
                                  width: 9,
                                ),
                                Text(
                                  'المحفظة',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Bahij',
                                    letterSpacing: 0.07,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        controller.radioSelected
                            ? Container(
                          padding: EdgeInsets.symmetric(vertical: 18),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color(0xffF8F8F8),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3),
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: MaterialStateProperty.all(
                                      Color(0xff8AB23B)),
                                  value: "another radio value",
                                  groupValue: controller.selectedValue,
                                  onChanged: (String? value) {
                                    setState(() {
                                      controller.selectedValue =
                                          value ?? "another radio value";
                                      controller.radioSelected = !controller.radioSelected;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                SvgPicture.asset('images/visa.svg'),
                                SizedBox(
                                  width: 9,
                                ),
                                Text(
                                  'فيزا كارد',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Bahij',
                                    letterSpacing: 0.07,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                            : Container(
                          padding: EdgeInsets.symmetric(vertical: 18),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color(0xffF8F8F8),
                          ),
                          child: Expanded(
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                  EdgeInsets.symmetric(horizontal: 3),
                                  child: Row(
                                    children: [
                                      Radio(
                                        fillColor:
                                        MaterialStateProperty.all(
                                            Color(0xff8AB23B)),
                                        value: "another radio value",
                                        groupValue: controller.selectedValue,
                                        onChanged: (String? value) {
                                          setState(() {
                                            controller.selectedValue =
                                                value ?? "radio value";
                                            controller.radioSelected = !controller.radioSelected;
                                          });
                                        },
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      SvgPicture.asset('images/visa.svg'),
                                      SizedBox(
                                        width: 9,
                                      ),
                                      Text(
                                        'فيزا كارد',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Bahij',
                                          letterSpacing: 0.07,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding:
                                  EdgeInsets.symmetric(horizontal: 16),
                                  child: TextField(
                                    controller: controller.nameEditingController,
                                    keyboardType:
                                    TextInputType.text,
                                    textAlign: TextAlign.start,
                                    decoration: InputDecoration(
                                      errorText: controller.nameErorr,
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: 'ادخال اسم صاحب البطاقة',
                                      hintStyle: const TextStyle(
                                        color: Color(0xffA3A2B2),
                                        fontSize: 12,
                                        fontFamily: 'Bahij',
                                        letterSpacing: 0.07,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(4),
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(4),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        borderSide: const BorderSide(
                                          color: Colors.red,
                                        ),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.red,
                                        ),
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      contentPadding:
                                      const EdgeInsets.symmetric(
                                        vertical: 13,
                                        horizontal: 17,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding:
                                  EdgeInsets.symmetric(horizontal: 16),
                                  child: TextField(
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                      CardFormatter(),
                                    ],
                                    controller: controller.numberEditingController,
                                    keyboardType:
                                    TextInputType.number,
                                    textAlign: TextAlign.start,
                                    decoration: InputDecoration(
                                      errorText: controller.numberErorr,
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: 'رقم البطاقة ” مكون من 16 رقم “',
                                      hintStyle: const TextStyle(
                                        color: Color(0xffA3A2B2),
                                        fontSize: 12,
                                        fontFamily: 'Bahij',
                                        letterSpacing: 0.07,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(4),
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(4),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        borderSide: const BorderSide(
                                          color: Colors.red,
                                        ),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.red,
                                        ),
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      contentPadding:
                                      const EdgeInsets.symmetric(
                                        vertical: 13,
                                        horizontal: 17,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.symmetric(horizontal: 16),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          child: TextFormField(
                                            textAlign: TextAlign.start,
                                            controller: controller.dateController,
                                            decoration: InputDecoration(
                                              suffixIcon: Container(
                                                width: 20,
                                                height: 20,
                                                child: IconButton(
                                                  onPressed: () {
                                                    controller.selectDate(context);
                                                  },
                                                  icon: Icon(Icons
                                                      .calendar_month_outlined,
                                                    color: Color(0xffB5BEC8),
                                                  ),
                                                ),
                                              ),
                                              errorText: controller.dateErorr,
                                              filled: true,
                                              fillColor: Colors.white,
                                              hintText: 'الشهر/ السنة',
                                              hintStyle: const TextStyle(
                                                  color: Color(0xffA1A1A1),
                                                  fontSize: 12,
                                                  fontFamily: 'Bahij',
                                                  letterSpacing: 0.07),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(4),
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(4),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(4),
                                                borderSide: const BorderSide(
                                                  color: Colors.red,
                                                ),
                                              ),
                                              focusedErrorBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Colors.red,
                                                ),
                                                borderRadius: BorderRadius.circular(4),
                                              ),
                                              contentPadding:
                                              const EdgeInsets.symmetric(
                                                vertical: 13,
                                                horizontal: 17,
                                              ),
                                            ),
                                            readOnly: true,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Container(
                                        width: 115,
                                        child: TextField(
                                          controller: controller.cvvEditingController,
                                          keyboardType:
                                          TextInputType.number,
                                          textAlign: TextAlign.start,
                                          decoration: InputDecoration(
                                            errorText: controller.cvvErorr,
                                            filled: true,
                                            fillColor: Colors.white,
                                            hintText: 'CVV',
                                            hintStyle: const TextStyle(
                                              color: Color(0xffA3A2B2),
                                              fontSize: 12,
                                              fontFamily: 'Bahij',
                                              letterSpacing: 0.07,
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(4),
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(4),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(4),
                                              borderSide: const BorderSide(
                                                color: Colors.red,
                                              ),
                                            ),
                                            focusedErrorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Colors.red,
                                              ),
                                              borderRadius: BorderRadius.circular(4),
                                            ),
                                            contentPadding:
                                            const EdgeInsets.symmetric(
                                              vertical: 13,
                                              horizontal: 17,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'سعر الباقة',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Bahij',
                                      color: Color(0xff595757),
                                      letterSpacing: 0.07,
                                    ),
                                  ),
                                  Text(
                                    '500.00 ر.س',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Bahij',
                                      letterSpacing: 0.07,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'اجمالي سعر التوصيل',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Bahij',
                                      color: Color(0xff595757),
                                      letterSpacing: 0.07,
                                    ),
                                  ),
                                  Text(
                                    '35.00 ر.س',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Bahij',
                                      letterSpacing: 0.07,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'الضريبة',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Bahij',
                                      color: Color(0xff595757),
                                      letterSpacing: 0.07,
                                    ),
                                  ),
                                  Text(
                                    '0.00 ر.س',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Bahij',
                                      letterSpacing: 0.07,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 19,
                              ),
                              Divider(
                                thickness: 1,
                                color: Color(0xffEEF0F1),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'المبلغ الاجمالي',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Bahij',
                                      letterSpacing: 0.07,
                                    ),
                                  ),
                                  Text(
                                    '535.00 ر.س',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Bahij',
                                      letterSpacing: 0.07,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'أدخل كود الخصم',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Bahij',
                                      letterSpacing: 0.07,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Stack(
                                children: [
                                  Expanded(
                                    child: Container(
                                      child: TextField(
                                        keyboardType: TextInputType.name,
                                        textAlign: TextAlign.start,
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          hintText: 'أدخل كود الخصم',
                                          hintStyle: const TextStyle(
                                            color: Color(0xffA3A2B2),
                                            fontSize: 12,
                                            fontFamily: 'Bahij',
                                            letterSpacing: 0.07,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(4),
                                            borderSide: const BorderSide(
                                              color: Color(0xffEEF0F1),
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0xffEEF0F1),
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(4),
                                          ),
                                          contentPadding:
                                          const EdgeInsets.symmetric(
                                            vertical: 13,
                                            horizontal: 17,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 0,
                                    bottom: 0,
                                    left: 0,
                                    child: Container(
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Color(0xffEEF0F1),
                                        ),
                                      ),
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            primary: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(4),
                                                  bottomLeft: Radius.circular(4)),
                                            ),
                                          ),
                                          onPressed: () {},
                                          child: Text(
                                            'استخدام',
                                            style: const TextStyle(
                                              color: Color(0xff595757),
                                              fontSize: 12,
                                              fontFamily: 'Bahij',
                                              letterSpacing: 0.07,
                                            ),
                                          )),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 88,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff000000).withOpacity(0.08),
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
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xff8AB23B),
                      ),
                      onPressed: () {
                        setState(() {
                          if(controller.selectedValue == "another radio value"){
                            controller.performLogin(context);
                          }
                          else
                            Get.to(ShareCodeScreen());
                        });
                      },
                      child: Container(
                        child: Text(
                          'تأكيد الدفع',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 14,
                              fontFamily: 'Bahij',
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
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
