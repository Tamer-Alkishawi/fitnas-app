import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/plog_details_screen/plog_details_screen.dart';

class PlogScreen extends StatefulWidget {
  const PlogScreen({Key? key}) : super(key: key);

  @override
  State<PlogScreen> createState() => _PlogScreenState();
}

class _PlogScreenState extends State<PlogScreen> {
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
          'المدونة',
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
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 55,
                  child: TextField(
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xffF8F8F8),
                        hintText: 'البحث عن اسم المقالة',
                        hintStyle: const TextStyle(
                            color: Color(0xffB5BEC8),
                            fontSize: 12,
                            fontFamily: 'Bahij',
                            letterSpacing: 0.07),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Color(0xff595757),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        contentPadding: const EdgeInsets.only(
                            top: 20, bottom: 17, right: 16)),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  height: 45,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        decoration: BoxDecoration(
                          color: Color(0xff8AB23B),
                          borderRadius: BorderRadius.circular(33),
                        ),
                        child: Text(
                          'الجميع',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Bahij',
                            color: Colors.white,
                            letterSpacing: 0.07,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Container(
                        padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        decoration: BoxDecoration(
                          color: Color(0xffF8F8F8),
                          borderRadius: BorderRadius.circular(33),
                        ),
                        child: Text(
                          'اللياقة البدنية',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Bahij',
                            color: Color(0xff595757),
                            letterSpacing: 0.07,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Container(
                        padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        decoration: BoxDecoration(
                          color: Color(0xffF8F8F8),
                          borderRadius: BorderRadius.circular(33),
                        ),
                        child: Text(
                          'الطعام الصحي',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Bahij',
                            color: Color(0xff595757),
                            letterSpacing: 0.07,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Container(
                        padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        decoration: BoxDecoration(
                          color: Color(0xffF8F8F8),
                          borderRadius: BorderRadius.circular(33),
                        ),
                        child: Text(
                          'تنظيم الوجبات',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Bahij',
                            color: Color(0xff595757),
                            letterSpacing: 0.07,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                GestureDetector(
                  onTap: (){
                    Get.to(PlogDetailsScreen());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffF8F8F8),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          child: Image.asset('images/example16.png'),
                        ),
                        SizedBox(height: 17,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'تناول الوجبات الصحية',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Bahij',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset('images/calender.svg'),
                                  SizedBox(width: 8,),
                                  Text(
                                    '2023/05/03',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Bahij',
                                      color: Color(0xff595757),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 14,),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16),
                          child: Text(
                            'كيفية اختيار وتحضير وتناول الأطعمة الصحية. ستجد مقالات حول فوائد الفواكه والخضروات، والبروتينات الصحية ..',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Bahij',
                                color: Color(0xff595757),
                                letterSpacing: 0.07
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12,),
                GestureDetector(
                  onTap: (){
                    Get.to(PlogDetailsScreen());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffF8F8F8),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          child: Image.asset('images/example17.png'),
                        ),
                        SizedBox(height: 17,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'وصفات صحية ولذيذة',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Bahij',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset('images/calender.svg'),
                                  SizedBox(width: 8,),
                                  Text(
                                    '2023/05/03',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Bahij',
                                      color: Color(0xff595757),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 14,),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16),
                          child: Text(
                            'قدم أفكارًا لوجبات صحية وشهية يمكنك تحضيرها في المنزل. ستجد وصفات للسلطات المغذية، والسموثي الصحي..',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Bahij',
                                color: Color(0xff595757),
                                letterSpacing: 0.07
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
