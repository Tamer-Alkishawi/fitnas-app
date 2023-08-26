import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
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
          'سياسة الخصوصية',
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
            padding: const EdgeInsets.symmetric(horizontal: 18),
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
                      height: 36,
                      width: 36,
                      child: Image.asset('images/privacy.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text('شكرًا لاهتمامك بتطبيقنا لبيع الطعام الصحي. نحن نولي أهمية كبيرة لحماية خصوصية المستخدمين لدينا، ونرغب في توضيح كيفية جمعنا واستخدامنا وحفظنا للمعلومات الشخصية التي نحصل عليها منك أثناء استخدام التطبيق. يرجى قراءة سياسة الخصوصية التالية بعناية لفهم الممارسات التي نتبعها في هذا الصدد.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Bahij',
                    color: Color(0xff595757),
                    letterSpacing: 0.07,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 40,),
                RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'جمع المعلومات:  ',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Bahij',
                            letterSpacing: 0.07,
                            fontWeight: FontWeight.w700,
                            color: Colors.black
                        ),
                      ),
                      TextSpan(
                        text:
                        ' أثناء استخدام التطبيق، قد نقوم بجمع معلومات شخصية منك بشكل طوعي. يمكن أن تشمل هذه المعلومات الاسم، عنوان البريد الإلكتروني، رقم الهاتف، ومعلومات الفوترة. يتم استخدام هذه المعلومات لتوفير الخدمات والمنتجات المطلوبة وتحسين تجربتك كمستخدم.',
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
                ),
                SizedBox(height: 40,),
                RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'استخدام المعلومات:  ',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Bahij',
                            letterSpacing: 0.07,
                            fontWeight: FontWeight.w700,
                            color: Colors.black
                        ),
                      ),
                      TextSpan(
                        text:
                        ' نحن نستخدم المعلومات التي نحصل عليها منك لأغراض عديدة، بما في ذلك:',
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
                ),
                Row(
                  children: [
                    SizedBox(width: 35,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '. ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Bahij',
                                    color: Color(0xff595757),
                                    letterSpacing: 0.07,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: 'تقديم المنتجات والخدمات التي طلبتها منا.',
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
                          ),
                          RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '. ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Bahij',
                                    color: Color(0xff595757),
                                    letterSpacing: 0.07,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: 'تحسين وتخصيص تجربتك مع التطبيق وتوفير المحتوى والعروض المناسبة.',
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
                          ),
                          RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '. ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Bahij',
                                    color: Color(0xff595757),
                                    letterSpacing: 0.07,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: 'توفير الدعم والمساعدة الفنية في حالة الحاجة.',
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
                          ),
                          RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '. ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Bahij',
                                    color: Color(0xff595757),
                                    letterSpacing: 0.07,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: 'تحليل استخدام التطبيق وإجراء بحوث وتحليلات لتحسين الأداء والوظائف.',
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
                          ),
                          RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '. ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Bahij',
                                    color: Color(0xff595757),
                                    letterSpacing: 0.07,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: 'الامتثال للقوانين واللوائح السارية.',
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
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
