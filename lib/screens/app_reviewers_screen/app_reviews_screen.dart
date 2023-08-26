import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/app_reviewers_screen/app_reviewers_controller.dart';

class AppReviewsScreen extends StatefulWidget {
  const AppReviewsScreen({Key? key}) : super(key: key);

  @override
  State<AppReviewsScreen> createState() => _AppReviewsScreenState();
}

class _AppReviewsScreenState extends State<AppReviewsScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppReviewersController>(
      init: AppReviewersController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.5,
            shadowColor: Color(0xffF8F8F8),
            title: Text(
              'تقييم التطبيق',
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 48,
                        ),
                        Center(
                          child: Image(
                            image: AssetImage('images/fitnas1.png'),
                          ),
                        ),
                        SizedBox(
                          height: 48,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: RatingBar(
                                initialRating: 4,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                ratingWidget: RatingWidget(
                                  full: Container(
                                      width: 30,
                                      height: 30,
                                      child: SvgPicture.asset(
                                          'images/star_full.svg')),
                                  half: Container(
                                      width: 30,
                                      height: 30,
                                      child: SvgPicture.asset(
                                          'images/star_full.svg')),
                                  empty: Container(
                                      width: 30,
                                      height: 30,
                                      child: SvgPicture.asset(
                                          'images/star_empty.svg')),
                                ),
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 5),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        TextField(
                          controller: controller.textEditingController,
                          maxLines: 10,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffF8F8F8),
                            hintText: 'ادخال ملاحظات تقييم خدمة التطبيق',
                            hintStyle: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Bahij',
                                fontWeight: FontWeight.w600,
                                color: Color(0xffB5BEC8)),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 19),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
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
                      width: double.infinity,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(8)),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xff8AB23B),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('images/send.svg'),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              'ارسال',
                              textAlign: TextAlign.start,
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
        );
      },
    );
  }
}
