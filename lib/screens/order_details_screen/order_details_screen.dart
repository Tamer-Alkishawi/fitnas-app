import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../widgets/silver_coach_package.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  Color _buttonColor1 = Colors.transparent;
  Color _buttonColor2 = const Color(0xff44515E);
  Color _TextAndIconColor1 = Colors.black;
  Color _TextAndIconColor2 = Colors.white;
  bool widgetVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'تفاصيل الطلب',
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
      body: ListView(
        children: [
          SizedBox(
            height: 14,
          ),
          SilverCoachPackageTwoContainer(
            imageUrl1: 'images/example5.png',
            imageUrl2: 'images/resturent1.png',
            hint: AppLocalizations.of(context)!.silver_coach_package,
            days: AppLocalizations.of(context)!.day,
            numberOfDays: '20',
            price: '130.00',
            resturentName: AppLocalizations.of(context)!.almalaki_restaurant,
            verticalPadding: 11,
            imageHeight: 150,
            rateVisiblity: false,
            ratingVisiblity: false,
            resturentNameVisibility: true,
            favoriteIconVisibility: false,
          ),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
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
                          _buttonColor1 = Colors.transparent;
                          _buttonColor2 = const Color(0xff44515E);
                          _TextAndIconColor2 = Colors.white;
                          _TextAndIconColor1 = Colors.black;
                          widgetVisible = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          primary: _buttonColor2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23),
                          ),
                          elevation: 0),
                      child: Text(
                        AppLocalizations.of(context)!.the_packages,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Bahij',
                          fontWeight: FontWeight.w500,
                          color: _TextAndIconColor2,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _buttonColor1 = const Color(0xff44515E);
                          _buttonColor2 = Colors.transparent;
                          _TextAndIconColor1 = Colors.white;
                          _TextAndIconColor2 = Colors.black;
                          widgetVisible = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: _buttonColor1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(23),
                        ),
                        elevation: 0,
                      ),
                      child: Text(
                        'مواعيد التسليم',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Bahij',
                          fontWeight: FontWeight.w500,
                          color: _TextAndIconColor1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          widgetVisible
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'حالة الطلب',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Bahij',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'قيد التنفيذ',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Bahij',
                                fontWeight: FontWeight.w600,
                                color: Color(0xff595757),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xffEEF0F1),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Text(
                                  'الكمية',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Bahij',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  '(عدد الأفراد)',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'Bahij',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff595757)),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'X 2',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Bahij',
                                fontWeight: FontWeight.w600,
                                color: Color(0xff595757),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xffEEF0F1),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'أيام الباقة',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Bahij',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'السبت - الثلاثاء - الخميس',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Bahij',
                                fontWeight: FontWeight.w600,
                                color: Color(0xff595757),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xffEEF0F1),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'تاريخ البدأ',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Bahij',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              '03/05/2020',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Bahij',
                                fontWeight: FontWeight.w600,
                                color: Color(0xff595757),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xffEEF0F1),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'طريقة الاستلام',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Bahij',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'خدمة التوصيل',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Bahij',
                                fontWeight: FontWeight.w600,
                                color: Color(0xff595757),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xffEEF0F1),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'عنوان التوصيل',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Bahij',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'طريق العروبة، الورود، الرياض، السعودية',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Bahij',
                                fontWeight: FontWeight.w600,
                                color: Color(0xff595757),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xffEEF0F1),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'مواعيد الاستلام',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Bahij',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'من 8 صباحا حتى 2 ظهرا',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Bahij',
                                fontWeight: FontWeight.w600,
                                color: Color(0xff595757),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xffEEF0F1),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'ملاحظات',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Bahij',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              '-',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Bahij',
                                fontWeight: FontWeight.w600,
                                color: Color(0xff595757),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xffEEF0F1),
                      ),
                      SizedBox(
                        height: 19,
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            width: 1,
                            color: Color(0xffF4F4F4),
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'تتبع الطلب',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Bahij',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 45,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Divider(
                                            thickness: 1,
                                            color: Color(0xff8AB23B),
                                          ),
                                        ),
                                        Expanded(
                                          child: Divider(
                                            endIndent: 20,
                                            thickness: 1,
                                            color: Color(0xffE6E6E6),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            width: 45,
                                            height: 45,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                width: 1,
                                                color: Color(0xff8AB23B),
                                              ),
                                            ),
                                            child: Center(
                                                child: SvgPicture.asset(
                                                    'images/resturent.svg')),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'المطعم',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Bahij',
                                                letterSpacing: 0.07,
                                                color: Color(0xff8AB23B)),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: 45,
                                            height: 45,
                                            decoration: BoxDecoration(
                                              color: Color(0xff8AB23B),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Center(
                                                child: Image.asset(
                                                    'images/truk.png')),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'قيد التنفيذ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Bahij',
                                                letterSpacing: 0.07,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xff8AB23B)),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: 45,
                                            height: 45,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xffF4F4F4)),
                                            child: Center(
                                                child: SvgPicture.asset(
                                                    'images/location3.svg')),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'اكتمال الطلب',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Bahij',
                                                letterSpacing: 0.07,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xff606E7D)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 32,
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
                                    SvgPicture.asset('images/wallet.svg'),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'المساعدة',
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
                )
              : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                    children: [
                      SizedBox(
                        height: 14,
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(
                            left: 14, right: 12, top: 12, bottom: 14),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              width: 1,
                              color: Color(0xffF4F4F4),
                            )),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 37,
                                      width: 37,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff1ABC9C),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Sa',
                                          textAlign: TextAlign.start,
                                          style: const TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Bahij',
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'السبت',
                                      textAlign: TextAlign.start,
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Bahij',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,),
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                                  decoration: BoxDecoration(
                                    color: Color(0xffF4F4F4),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          height: 20,
                                          width: 20,
                                          child: SvgPicture.asset('images/tick.svg')),
                                      SizedBox(width: 8,),
                                      Text(
                                        'تم التسليم',
                                        textAlign: TextAlign.start,
                                        style: const TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Bahij',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 14,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      child: SvgPicture.asset('images/calender.svg'),
                                    ),
                                    SizedBox(width: 6,),
                                    Text(
                                      '2023/05/01',
                                      textAlign: TextAlign.start,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Bahij',
                                        color: Color(0xff595757),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 60,),
                                Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      child: SvgPicture.asset('images/clock.svg'),
                                    ),
                                    SizedBox(width: 6,),
                                    Text(
                                      '08:00 صباحا',
                                      textAlign: TextAlign.start,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Bahij',
                                        color: Color(0xff595757),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height:10),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(
                            left: 14, right: 12, top: 12, bottom: 14),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              width: 1,
                              color: Color(0xffF4F4F4),
                            )),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 37,
                                      width: 37,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff3498DB),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Su',
                                          textAlign: TextAlign.start,
                                          style: const TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Bahij',
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'الأحد',
                                      textAlign: TextAlign.start,
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Bahij',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,),
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                                  decoration: BoxDecoration(
                                    color: Color(0xffF4F4F4),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          height: 20,
                                          width: 20,
                                          child: SvgPicture.asset('images/transfer.svg')),
                                      SizedBox(width: 8,),
                                      Text(
                                        'تغيير الموعد',
                                        textAlign: TextAlign.start,
                                        style: const TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Bahij',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 14,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      child: SvgPicture.asset('images/calender.svg'),
                                    ),
                                    SizedBox(width: 6,),
                                    Text(
                                      '2023/05/02',
                                      textAlign: TextAlign.start,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Bahij',
                                        color: Color(0xff595757),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 60,),
                                Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      child: SvgPicture.asset('images/clock.svg'),
                                    ),
                                    SizedBox(width: 6,),
                                    Text(
                                      '10:00 صباحا',
                                      textAlign: TextAlign.start,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Bahij',
                                        color: Color(0xff595757),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height:10),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(
                            left: 14, right: 12, top: 12, bottom: 14),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              width: 1,
                              color: Color(0xffF4F4F4),
                            )),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 37,
                                      width: 37,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff9B59B6),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Mo',
                                          textAlign: TextAlign.start,
                                          style: const TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Bahij',
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'الأحد',
                                      textAlign: TextAlign.start,
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Bahij',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,),
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                                  decoration: BoxDecoration(
                                    color: Color(0xffF4F4F4),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          height: 20,
                                          width: 20,
                                          child: SvgPicture.asset('images/transfer.svg')),
                                      SizedBox(width: 8,),
                                      Text(
                                        'تغيير الموعد',
                                        textAlign: TextAlign.start,
                                        style: const TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Bahij',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 14,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      child: SvgPicture.asset('images/calender.svg'),
                                    ),
                                    SizedBox(width: 6,),
                                    Text(
                                      '2023/05/02',
                                      textAlign: TextAlign.start,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Bahij',
                                        color: Color(0xff595757),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 50,),
                                Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      child: SvgPicture.asset('images/clock.svg'),
                                    ),
                                    SizedBox(width: 6,),
                                    Text(
                                      '10:00 صباحا',
                                      textAlign: TextAlign.start,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Bahij',
                                        color: Color(0xff595757),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 85,),
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
                                  primary: const Color(0xffF8F8F8),
                                  elevation: 0
                                ),
                                onPressed: () {},
                                child: Text(
                                  'الغاء الطلب',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Bahij',
                                      color: Color(0xff44515E),
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
              ),
        ],
      ),
    );
  }
}
