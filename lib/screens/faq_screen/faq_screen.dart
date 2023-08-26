import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/faq_screen/faq_controller.dart';

import '../../widgets/faq_container.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({Key? key}) : super(key: key);

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FAQController>(
      init: FAQController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.5,
            shadowColor: Color(0xffF8F8F8),
            title: Text(
              'الأسئلة الشائعة',
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
                    child: Image.asset('images/faq.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: controller.faqMenu(context).length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        FAQContainer(
                          text1: controller.faqMenu(context)[index].text1,
                          text2: controller.faqMenu(context)[index].text2,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
