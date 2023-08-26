import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppInfoScreen extends StatefulWidget {
  const AppInfoScreen({Key? key}) : super(key: key);

  @override
  State<AppInfoScreen> createState() => _AppInfoScreenState();
}

class _AppInfoScreenState extends State<AppInfoScreen> {
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
          'من نحن',
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
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
                      height: 32,
                      width: 32,
                      child: Image.asset('images/fitnas3.png'),
                    ),
                  ),
                ),
                SizedBox(height: 24,),
                Text('نحن فريق متخصص في تقديم تجربة مميزة للمستخدمين الذين يبحثون عن خيارات طعام صحي ومتوازن. إليك بعض المعلومات حولنا:',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Bahij',
                    color: Color(0xff595757),
                    letterSpacing: 0.07,
                    fontWeight: FontWeight.w600,

                  ),
                ),
                SizedBox(height: 36,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('رؤيتنا',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Bahij',
                        letterSpacing: 0.07,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4,),
                Text('نحن نسعى لتعزيز الصحة والرفاهية من خلال توفير وجبات غذائية صحية ومتوازنة، وتمكين الأشخاص من اتخاذ قرارات غذائية صحية بسهولة وملاءمة.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Bahij',
                    color: Color(0xff595757),
                    letterSpacing: 0.07,
                    fontWeight: FontWeight.w600,

                  ),
                ),
                SizedBox(height: 36,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('خدماتنا',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Bahij',
                        letterSpacing: 0.07,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4,),
                Text('يوفر تطبيقنا واجهة سهلة الاستخدام تتيح للمستخدمين تصفح قوائم الطعام المتاحة من مختلف المطابخ والمطاعم. يمكنك اختيار وجباتك المفضلة وإضافتها إلى الاشتراك. كما يوفر التطبيق خيار الدفع الآمن والتوصيل المنزلي لتوفير راحة وسهولة لعملائنا.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Bahij',
                    color: Color(0xff595757),
                    letterSpacing: 0.07,
                    fontWeight: FontWeight.w600,

                  ),
                ),
                SizedBox(height: 36,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('جودة الطعام',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Bahij',
                        letterSpacing: 0.07,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4,),
                Text('نحرص على تعاوننا مع مطابخ ومطاعم ذات سمعة طيبة والتأكد من تقديم وجبات عالية الجودة ومصنوعة من مكونات طازجة وصحية.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Bahij',
                    color: Color(0xff595757),
                    letterSpacing: 0.07,
                    fontWeight: FontWeight.w600,

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
