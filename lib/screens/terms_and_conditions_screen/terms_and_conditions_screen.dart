import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TermsAndConditionsScreen extends StatefulWidget {
  const TermsAndConditionsScreen({Key? key}) : super(key: key);

  @override
  State<TermsAndConditionsScreen> createState() => _TermsAndConditionsScreenState();
}

class _TermsAndConditionsScreenState extends State<TermsAndConditionsScreen> {
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
          'الشروط و الأحكام',
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
                      child: Image.asset('images/conditions.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text('مرحبًا بك في تطبيقنا لبيع الطعام الصحي. يُرجى قراءة الشروط والأحكام التالية بعناية قبل استخدام التطبيق، حيث تحدد حقوقك والتزاماتك تجاهنا كمستخدم للتطبيق.',
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('1. ',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Bahij',
                        color: Color(0xff595757),
                        letterSpacing: 0.07,
                        fontWeight: FontWeight.w600,
                      ),),
                    SizedBox(width: 8,),
                    Expanded(child: RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'قبول الشروط والأحكام:  ',
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
                            ' باستخدامك لتطبيقنا، فإنك توافق على جميع الشروط والأحكام المبينة هنا. إذا كنت غير موافق على أي جزء من هذه الشروط والأحكام، يُرجى عدم استخدام التطبيق.',
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
                    ),)
                  ],
                ),
                SizedBox(height: 12,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('2. ',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Bahij',
                      color: Color(0xff595757),
                      letterSpacing: 0.07,
                      fontWeight: FontWeight.w600,
                    ),),
                    SizedBox(width: 8,),
                    Expanded(child: RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'المحتوى والملكية الفكرية:  ',
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
                            ' جميع حقوق الملكية الفكرية المتعلقة بالتطبيق ومحتواه، بما في ذلك النصوص والصور والعلامات التجارية والشعارات والرسومات والرموز، تعود لنا أو للجهات الثالثة المرخصة لنا. لا يجوز استخدام أو نسخ أو تعديل أو نقل أو توزيع أو إعادة إنتاج أو بيع أو نشر أي جزء من المحتوى دون الحصول على إذن مسبق منا.',
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
                    ),)
                  ],
                ),
                SizedBox(height: 12,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('3. ',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Bahij',
                        color: Color(0xff595757),
                        letterSpacing: 0.07,
                        fontWeight: FontWeight.w600,
                      ),),
                    SizedBox(width: 8,),
                    Expanded(child: RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'التسجيل والحساب:  ',
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
                            ' قد يتطلب استخدام بعض الوظائف في التطبيق إنشاء حساب شخصي. يجب أن تكون مسؤولًا عن سرية معلومات حسابك وعدم مشاركتها مع الآخرين. يجب عليك تقديم معلومات دقيقة ومحدثة أثناء عملية التسجيل، وسنقوم بحماية معلوماتك وفقًا لسياسة الخصوصية.',
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
                    ),)
                  ],
                ),
                SizedBox(height: 12,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('4. ',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Bahij',
                        color: Color(0xff595757),
                        letterSpacing: 0.07,
                        fontWeight: FontWeight.w600,
                      ),),
                    SizedBox(width: 8,),
                    Expanded(child: RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'استخدام التطبيق:  ',
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
                            ' يُحظر استخدام التطبيق لأي أغراض غير قانونية أو غير مشروعة، بما في ذلك نشر محتوى مسيء أو مزعج أو ترويج العنف أو التمييز. يجب عليك الامتناع عن القيام بأي أعمال .',
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
                    ),)
                  ],
                ),
                SizedBox(height: 18,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
