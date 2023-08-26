import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/order_details_screen/order_details_screen.dart';

class ShareCodeScreen extends StatefulWidget {
  const ShareCodeScreen({Key? key}) : super(key: key);

  @override
  State<ShareCodeScreen> createState() => _ShareCodeScreenState();
}

class _ShareCodeScreenState extends State<ShareCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        shadowColor: Color(0xffF8F8F8),
        title: Text(
          'مشاركة كود الخصم',
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
                height: 48,
              ),
              Container(
                height: 112,
                width: 112,
                child: Image.asset('images/party.png'),
              ),
              SizedBox(
                height: 48,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 68),
                child: Stack(
                  children: [
                    Expanded(
                      child: Text(
                        'عط هالكود للي يعز عليك وراح تجيك مكافأتك بالمحفظة',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Bahij',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      left: 40,
                      child: Container(
                        height: 18,
                        width: 18,
                        child: Image.asset('images/emoji.png'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'عط هالكود للي يعز عليك وبعد أول طلب راح تجيهم 10 ريال بمحافظهم و 10 ريال بمحفطتك خلال 8 ساعات',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Bahij',
                    color: Color(0xff595757),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: DottedBorder(
                  color: Color(0xffDCDCDC),
                  strokeWidth: 1,
                  padding: EdgeInsets.all(0),
                  radius: Radius.circular(6),
                  dashPattern: [5, 5],
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffF6F6F6),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    height: 120,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        'UC5P3ETF8',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Bahij',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 183,
              ),
            ],
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 55,
                        width: 174,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xff8AB23B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('images/share.svg'),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'شارك',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Bahij',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.07,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 55,
                        width: 174,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xffF8F8F8),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {
                            Get.to(OrderDetailsScreen());
                          },
                          child: Text(
                            'تخطي',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 14,
                                fontFamily: 'Bahij',
                                color: Color(0xff44515E),
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.07),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
