import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/address_screen/address_screen.dart';
import 'package:project_one/screens/package_details_screen/package_details_controller.dart';
import 'package:project_one/screens/pay_screen/pay_screen.dart';
import 'package:project_one/widgets/silver_coach_package.dart';
import '../../widgets/days_container.dart';

class PackageDetailsScreen extends StatefulWidget {
  const PackageDetailsScreen({Key? key}) : super(key: key);

  @override
  State<PackageDetailsScreen> createState() => _PackageDetailsScreenState();
}

class _PackageDetailsScreenState extends State<PackageDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PackageDetailsController>(
      init: PackageDetailsController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(
              AppLocalizations.of(context)!.silver_coach_package,
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
                  height: 5,
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: controller
                      .PackageDetailsMenu(context)
                      .length,
                  itemBuilder: (context, index) {
                    return SilverCoachPackageTwoContainer(
                      imageUrl1: controller.PackageDetailsMenu(context)[index]
                          .imageUrl1!,
                      imageUrl2: controller.PackageDetailsMenu(context)[index]
                          .imageUrl2!,
                      hint: controller.PackageDetailsMenu(context)[index]
                          .hint!,
                      days: controller.PackageDetailsMenu(context)[index]
                          .days!,
                      numberOfDays: controller.PackageDetailsMenu(context)[index]
                          .numberOfDays!,
                      price: controller.PackageDetailsMenu(context)[index]
                          .price!,
                      resturentName: controller.PackageDetailsMenu(context)[index]
                          .resturentName!,
                      verticalPadding: controller.PackageDetailsMenu(context)[index]
                          .verticalPadding!,
                      imageHeight: controller.PackageDetailsMenu(context)[index]
                          .imageHeight!,
                      rateVisiblity: controller.PackageDetailsMenu(context)[index]
                          .rateVisiblity!,
                      ratingVisiblity: controller.PackageDetailsMenu(context)[index]
                          .ratingVisiblity!,
                      resturentNameVisibility: controller.PackageDetailsMenu(context)[index]
                          .resturentNameVisibility!,
                      favoriteIconVisibility: controller.PackageDetailsMenu(context)[index]
                          .favoriteIconVisibility!,);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'الكمية:',
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            fontSize: 14,
                            fontFamily: 'Bahij',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          '(عدد الأفراد)',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 10,
                              fontFamily: 'Bahij',
                              color: Color(0xff595757)),
                        ),
                      ],
                    ),
                    Container(
                      width: 146,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Color(0xffF8F8F8),
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            width: 1,
                            color: Color(0xffEEF0F1),
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            splashColor: Colors.transparent,
                            onPressed: () {
                              setState(() {
                                controller.x++;
                              });
                            },
                            icon: SvgPicture.asset('images/plus.svg'),
                          ),
                          Text(
                            'X${controller.x}',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          IconButton(
                            splashColor: Colors.transparent,
                            onPressed: () {
                              setState(() {
                                if (controller.x > 0) {
                                  controller.x--;
                                }
                              });
                            },
                            icon: SvgPicture.asset('images/minus.svg'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'أيام الباقة',
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'Bahij',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          controller.tapped1 = !controller.tapped1;
                        });
                      },
                      child: DaysContainer(
                        containerColor:
                        controller.tapped1 ? Color(0xff44515E) : Colors.white,
                        textColor: controller.tapped1 ? Colors.white : Colors.black,
                        day: 'الأحد',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          controller.tapped2 = !controller.tapped2;
                        });
                      },
                      child: DaysContainer(
                        containerColor:
                        controller.tapped2 ? Color(0xff44515E) : Colors.white,
                        textColor: controller.tapped2 ? Colors.white : Colors.black,
                        day: 'الاثنين',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          controller.tapped3 = !controller.tapped3;
                        });
                      },
                      child: DaysContainer(
                        containerColor:
                        controller.tapped3 ? Color(0xff44515E) : Colors.white,
                        textColor: controller.tapped3 ? Colors.white : Colors.black,
                        day: 'الثلاثاء',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          controller.tapped4 = !controller.tapped4;
                        });
                      },
                      child: DaysContainer(
                        containerColor:
                        controller.tapped4 ? Color(0xff44515E) : Colors.white,
                        textColor: controller.tapped4 ? Colors.white : Colors.black,
                        day: 'الاربعاء',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          controller.tapped5 = !controller.tapped5;
                        });
                      },
                      child: DaysContainer(
                        containerColor:
                        controller.tapped5 ? Color(0xff44515E) : Colors.white,
                        textColor: controller.tapped5 ? Colors.white : Colors.black,
                        day: 'الخميس',
                      ),
                    ),
                    DaysContainer(
                      containerColor: Color(0xffE7E7E7),
                      textColor: Colors.white,
                      day: 'الجمعة',
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          controller.tapped6 = !controller.tapped6;
                        });
                      },
                      child: DaysContainer(
                        containerColor:
                        controller.tapped6 ? Color(0xff44515E) : Colors.white,
                        textColor: controller.tapped6 ? Colors.white : Colors.black,
                        day: 'السبت',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'تاريخ البدأ',
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'Bahij',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  textAlign: TextAlign.start,
                  controller: controller.dateController,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.calendar_month_outlined,
                        size: 20,
                        color: Color(0xff595757),
                      ),
                      onPressed: () {
                        controller.selectDate(context);
                      },
                    ),
                    filled: true,
                    fillColor: const Color(0xffF8F8F8),
                    hintText: 'تحديد تاريخ البدأ',
                    hintStyle: const TextStyle(
                        color: Color(0xffA1A1A1),
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
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 15,
                    ),
                  ),
                  readOnly: true,
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'طريقة الاستلام',
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'Bahij',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 45,
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
                              controller.widgetVisible = false;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              primary: controller.buttonColor2, elevation: 0),
                          child: Text(
                            'استلام من المطعم',
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
                              controller.widgetVisible = true;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: controller.buttonColor1,
                            elevation: 0,
                          ),
                          child: Text(
                            'خدمة التوصيل',
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
                controller.widgetVisible
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'عنوان التوصيل',
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                              fontSize: 14,
                              fontFamily: 'Bahij',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          GestureDetector(
                            onTap: (){Get.to(AddressScreen());},
                            child: Container(
                              padding: EdgeInsets.all(14),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                      color: Color(0xffEEF0F1), width: 1)),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset('images/house.svg'),
                                      SizedBox(
                                        width: 9,
                                      ),
                                      Text(
                                        'عنوان 1، البيت',
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Bahij',
                                          letterSpacing: 0.07,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Positioned(
                                    left: 0,
                                    bottom: 0,
                                    right: 0,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 27,
                                        ),
                                        Expanded(
                                          child: Text(
                                            'طريق العروبة، الورود، الرياض، السعودية',
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Bahij',
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.07,
                                              color: Color(0xff606E7D),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 100,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(right: 6),
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color(0xff595757),
                                            size: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                        ],
                      )
                    : Container(),
                Text(
                  'مواعيد الاستلام',
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'Bahij',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Color(0xffEEF0F1), width: 1)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'من 8 الى 11 صباحا',
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                              fontSize: 14,
                              fontFamily: 'Bahij',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Radio(
                            fillColor:
                                MaterialStateProperty.all(Color(0xff8AB23B)),
                            value: "radio value",
                            groupValue: controller.selectedValue,
                            onChanged: (String? value) {
                              setState(() {
                                controller.selectedValue = value ?? "radio value";
                                print(controller.selectedValue);
                              });
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xffEFEFEF),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'من 2 الى 8 مساءا',
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                              fontSize: 14,
                              fontFamily: 'Bahij',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Radio(
                            fillColor:
                                MaterialStateProperty.all(Color(0xff8AB23B)),
                            value: "another radio value",
                            groupValue: controller.selectedValue,
                            onChanged: (String? value) {
                              setState(() {
                                controller.selectedValue = value ?? "radio value";
                                print(controller.selectedValue);
                              });
                            },
                          ),
                          // GestureDetector(
                          //   onTap: () {
                          //     setState(() {
                          //       _isChecked = !_isChecked;
                          //     });
                          //   },
                          //   child: Container(
                          //     width: 20.0,
                          //     height: 20.0,
                          //     decoration: BoxDecoration(
                          //       shape: BoxShape.circle,
                          //       border: Border.all(
                          //         color: _isChecked
                          //             ? Colors.transparent
                          //             : Color(0xffA3A2B2),
                          //         width: 2.0,
                          //       ),
                          //       color: _isChecked
                          //           ? Color(0xff8AB23B)
                          //           : Colors.transparent,
                          //     ),
                          //     child: _isChecked
                          //         ? Center(
                          //             child: Container(
                          //               width: 8,
                          //               height: 8,
                          //               decoration: BoxDecoration(
                          //                 shape: BoxShape.circle,
                          //                 color: Colors.white,
                          //               ),
                          //             ),
                          //           )
                          //         : Container(),
                          //   ),
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'ملاحظات',
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'Bahij',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: controller.textEditingController,
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: 'كتابة ملاحظاتك ..',
                    hintStyle: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Bahij',
                        fontWeight: FontWeight.w600,
                        color: Color(0xffA3A2B2)),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 12, vertical: 17),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(
                        color: Color(0xffEEF0F1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xffEEF0F1),
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
                SizedBox(
                  height: 26,
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
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xff8AB23B),
                          ),
                          onPressed: () {
                            Get.to(PayScreen());
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('images/wallet.svg'),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'الانتقال لعملية الدفع',
                                textAlign: TextAlign.center,
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
          ),
        );
      },
    );
  }
}
