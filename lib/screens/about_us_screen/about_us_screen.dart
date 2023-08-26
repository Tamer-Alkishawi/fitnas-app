import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/about_us_screen/about_us_controller.dart';
import 'package:project_one/widgets/list_tile_container.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AboutUsController>(
        init: AboutUsController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Colors.white,
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0.5,
              shadowColor: Color(0xffF8F8F8),
              title: Text(
                'عن التطبيق',
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
                      height: 24,
                    ),
                    Center(
                      child: Image(
                        image: AssetImage('images/fitnas1.png'),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffF8F8F8),
                        ),
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount:controller.aboutUsMenuList.length,
                          itemBuilder: (context, index) {
                            return ListTileContainer(
                              svgUrl: controller.aboutUsMenuList[index].svgUrl.toString(),
                              title: controller.aboutUsMenuList[index].title!,
                              dividerVisibility: controller.aboutUsMenuList[index].dividerVisibility!,
                              route: controller.aboutUsMenuList[index].route,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 64),
                    width: 180,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset('images/whatsapp.svg'),
                        SvgPicture.asset('images/tiktok.svg'),
                        SvgPicture.asset('images/twitter.svg'),
                        SvgPicture.asset('images/instagram.svg'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
