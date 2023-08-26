import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/add_credit_screen/add_credit_controller.dart';
import 'package:project_one/widgets/cards_container.dart';
import '../../widgets/card_formating.dart';

class AddCreditScreen extends StatefulWidget {
  const AddCreditScreen({Key? key}) : super(key: key);

  @override
  State<AddCreditScreen> createState() => _AddCreditScreenState();
}

class _AddCreditScreenState extends State<AddCreditScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddCreditController>(
      init: AddCreditController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.5,
            shadowColor: Color(0xffF8F8F8),
            title: Text(
              'اضافة رصيد',
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
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CardsContainer(svgUrl: 'images/visa2.svg',
                                title: 'فيزا كارد',
                                isActive: controller.selected == 0,
                                onTap: (){
                              setState(() {
                                controller.selected = 0;
                              });
                                },),
                            CardsContainer(svgUrl: 'images/credit_card.svg',
                              title: 'ماستر كارد',
                              isActive: controller.selected == 1,
                              onTap: (){
                                setState(() {
                                  controller.selected = 1;
                                });
                              },),
                            CardsContainer(svgUrl: 'images/mada.svg',
                                title: 'مدى',
                                isActive: controller.selected == 2,
                                onTap: (){
                              setState(() {
                                controller.selected = 2;
                              });
                                },),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'اسم صاحب البطاقة',
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontFamily: 'Bahij',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.07,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                          child: TextField(
                            controller: controller.textEditingController,
                            keyboardType: TextInputType.name,
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffF8F8F8),
                              hintText: 'ادخال اسم صاحب البطاقة',
                              hintStyle: const TextStyle(
                                color: Color(0xffB5BEC8),
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
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 13,
                                horizontal: 17,
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
                              'رقم البطاقة',
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontFamily: 'Bahij',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.07,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                          height: 55,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.start,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              CardFormatter(),
                            ],
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffF8F8F8),
                              hintText: '****     ****     ****     ****',
                              hintStyle: const TextStyle(
                                color: Color(0xffB5BEC8),
                                fontSize: 12,
                                fontFamily: 'Bahij',
                                letterSpacing: 5,
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
                              contentPadding: const EdgeInsets.only(
                                top: 20,
                                right: 12,
                                left: 12,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'CVV',
                                    textAlign: TextAlign.start,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontFamily: 'Bahij',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.07,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Container(
                                    height: 55,
                                    child: TextField(
                                      controller: controller
                                          .textEditingController,
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.start,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Color(0xffF8F8F8),
                                        hintText: 'CVV',
                                        hintStyle: const TextStyle(
                                          color: Color(0xffB5BEC8),
                                          fontSize: 12,
                                          fontFamily: 'Bahij',
                                          letterSpacing: 0.07,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                              8),
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                              8),
                                        ),
                                        contentPadding: const EdgeInsets
                                            .symmetric(
                                          vertical: 16,
                                          horizontal: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'تاريخ انتهاء البطاقة',
                                    textAlign: TextAlign.start,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontFamily: 'Bahij',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.07,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      controller.selectDate(context);
                                    },
                                    child: Container(
                                      height: 55,
                                      child: TextFormField(
                                        textAlign: TextAlign.start,
                                        controller: controller.dateController,
                                        decoration: InputDecoration(
                                          suffixIcon: Icon(
                                              Icons.calendar_month_sharp),
                                          filled: true,
                                          fillColor: Color(0xffF8F8F8),
                                          hintText: 'الشهر/ السنة',
                                          hintStyle: const TextStyle(
                                              color: Color(0xffB5BEC8),
                                              fontSize: 12,
                                              fontFamily: 'Bahij',
                                              letterSpacing: 0.07),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                                8),
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                                8),
                                          ),
                                          contentPadding: const EdgeInsets
                                              .symmetric(
                                            vertical: 16,
                                            horizontal: 15,
                                          ),
                                        ),
                                        readOnly: true,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Divider(
                          thickness: 1,
                          color: Color(0xffEEEEEE),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'قيمة المبلغ',
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontFamily: 'Bahij',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.07,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                          child: TextField(
                            controller: controller.textEditingController,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              suffix: Text(
                                'ريال سعودي',
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff44515E),
                                  fontFamily: 'Bahij',
                                  letterSpacing: 0.07,
                                ),
                              ),
                              filled: true,
                              fillColor: Color(0xffF8F8F8),
                              hintText: 'ادخال قيمة المبلغ',
                              hintStyle: const TextStyle(
                                color: Color(0xffB5BEC8),
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
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 13,
                                horizontal: 17,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  )
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
                            primary: Color(0xff8AB23B),
                            elevation: 0
                        ),
                        onPressed: () {},
                        child: Text(
                          'شحن الرصيد',
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
                  ),
                ),
              ),
            ],
          ),
        );
      },);
  }
}


