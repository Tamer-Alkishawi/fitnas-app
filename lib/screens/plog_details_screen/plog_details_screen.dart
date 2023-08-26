import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class PlogDetailsScreen extends StatefulWidget {
  const PlogDetailsScreen({Key? key}) : super(key: key);

  @override
  State<PlogDetailsScreen> createState() => _PlogDetailsScreenState();
}

class _PlogDetailsScreenState extends State<PlogDetailsScreen> {
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
          'تناول الوجبات الصحية',
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
                SizedBox(height: 12,),
                Container(
                  height: 150,
                  child: Image.asset('images/example16.png'),
                ),
                SizedBox(height: 17,),
                Row(
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
                SizedBox(height: 14,),
                Text(
                  'تناول الوجبات الصحية هو جزء أساسي من نمط حياة صحي ومتوازن. تلعب الغذاء الصحي دورًا هامًا في تعزيز الصحة العامة والوقاية من الأمراض. فيما يلي مقالة قصيرة تسلط الضوء على أهمية تناول الوجبات الصحية:',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Bahij',
                      color: Color(0xff595757),
                      letterSpacing: 0.07
                  ),
                ),
                SizedBox(height: 24,),
                Text(
                  'تعد الوجبات الصحية أساسية لصحة جسمك وعقلك. إذ تزود جسمك بالعناصر الغذائية الضرورية التي يحتاجها للوظائف اليومية والنمو والتجدد. تساعدك الوجبات الصحية على الشعور بالحيوية والنشاط، وتقوي جهاز المناعة وتقلل من خطر الإصابة بالأمراض المزمنة مثل السمنة وأمراض القلب والسكري.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Bahij',
                      color: Color(0xff595757),
                      letterSpacing: 0.07
                  ),
                ),
                SizedBox(height: 24,),
                Text(
                  'عند تناول الوجبات الصحية، يجب التركيز على تنوع الأطعمة وتضمين جميع المجموعات الغذائية الرئيسية. تشمل الوجبات الصحية الخضروات والفواكه والبروتينات الصحية مثل اللحوم البيضاء والأسماك والبقوليات، والحبوب الكاملة والمكسرات والبذور، والمنتجات الألبان قليلة الدسم.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Bahij',
                      color: Color(0xff595757),
                      letterSpacing: 0.07
                  ),
                ),
                SizedBox(height: 24,),
                Text(
                  'تناول الوجبات الصحية يساعد أيضًا في تحسين وزنك والحفاظ عليه. إذ تحتوي الوجبات الصحية على كميات مناسبة من السعرات الحرارية وتمنحك شعورًا بالامتلاء والشبع لفترة أطول. كما تساعدك على تنظيم مستويات السكر في الدم وتقليل الشهية للوجبات الغذائية الغير صحية والمشبعة بالدهون والسكر.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Bahij',
                      color: Color(0xff595757),
                      letterSpacing: 0.07
                  ),
                ),
                SizedBox(height: 24,),
                Text(
                  'لا تنسى أن شرب الماء الكافي هو جزء أيضًا من نمط غذائي صحي. تأكد من شرب الكمية الموصى بها من الماء يوميًا.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Bahij',
                      color: Color(0xff595757),
                      letterSpacing: 0.07
                  ),
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}
