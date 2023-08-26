import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool status = false;
  Color _buttonColor1 = Colors.transparent;
  Color _buttonColor2 = const Color(0xff89B13B);
  bool widgetVisible = true;

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
          'الاعدادات',
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
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                GestureDetector(
                  onTap: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                              width: 18,
                              height: 18,
                              child: SvgPicture.asset('images/language.svg')),
                          SizedBox(
                            width: 11,
                          ),
                          Text(
                            'اللغة',
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              fontSize: 12,
                              fontFamily: 'Bahij',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _buttonColor1 = widgetVisible ? const Color(0xff89B13B) : Colors.transparent;
                            _buttonColor2 = widgetVisible ? Colors.transparent : const Color(0xff89B13B);
                            widgetVisible = ! widgetVisible;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Color(0xffF8F8F8),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  color: _buttonColor1,
                                  shape: BoxShape.circle
                                ),
                                child: Center(
                                  child: widgetVisible? SvgPicture.asset('images/english_black.svg'):SvgPicture.asset('images/english_white.svg'),
                                ),

                              ),
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  color: _buttonColor2,
                                  shape: BoxShape.circle
                                ),
                                child: Center(
                                  child: widgetVisible?SvgPicture.asset('images/arabic_white.svg'): SvgPicture.asset('images/arabic_black.svg')
                                ),

                              ),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Color(0xffEFEFEF),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                              width: 18,
                              height: 18,
                              child: SvgPicture.asset('images/bell.svg')),
                          SizedBox(
                            width: 11,
                          ),
                          Text(
                            'تفعيل الاشعارات',
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              fontSize: 12,
                              fontFamily: 'Bahij',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      FlutterSwitch(
                        width: 48,
                        height: 28,
                        toggleSize: 24,
                        activeColor: Color(0xff8AB23B),
                        value: status,
                        borderRadius: 28,
                        padding: 2,
                        onToggle: (val) {
                          setState(() {
                            status = val;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Color(0xffEFEFEF),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                              width: 18,
                              height: 18,
                              child: SvgPicture.asset('images/logout.svg')),
                          SizedBox(
                            width: 11,
                          ),
                          Text(
                            'تسجيل خروج',
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              fontSize: 12,
                              fontFamily: 'Bahij',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_ios,
                          color: Color(0xff595757),
                          size: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Color(0xffEFEFEF),
                ),
                GestureDetector(
                  onTap: (){
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                              width: 18,
                              height: 18,
                              child: SvgPicture.asset('images/trash.svg')),
                          SizedBox(
                            width: 11,
                          ),
                          Text(
                            'حذف الحساب',
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              fontSize: 12,
                              fontFamily: 'Bahij',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {
                          // Navigator.pushNamed(context, '/plog_screen');
                        },
                        icon: Icon(Icons.arrow_forward_ios,
                          color: Color(0xff595757),
                          size: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Color(0xffEFEFEF),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
