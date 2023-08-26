import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/login_screen/login_screen.dart';
import 'package:project_one/screens/on_boarding_screen/on_boarding_controller.dart';
import '../../widgets/on_boarding_indicator.dart';
import '../../widgets/on_boarding_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
    @override
  Widget build(BuildContext context) {


    return GetBuilder<OnBoardingController>(
      init: OnBoardingController(),
      builder: (controller){
      return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: PageView(
                  reverse: controller.isEnglish(context) ? true : false,
                  physics: const BouncingScrollPhysics(),
                  controller: controller.pagecontroller,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (int currentPageIndex) {
                    setState(
                          () {
                            controller.currentPageIndex = currentPageIndex;
                      },
                    );
                  },
                  children: [
                    OnBoardingItem(
                      title: AppLocalizations.of(context)!.on_boarding_title1,
                      description:
                      AppLocalizations.of(context)!.on_boarding_hint1,
                      imageUrl: 'images/group 1.png',
                      alignment: Alignment.centerRight,
                    ),
                    OnBoardingItem(
                      title: AppLocalizations.of(context)!.on_boarding_title2,
                      description:
                      AppLocalizations.of(context)!.on_boarding_hint2,
                      imageUrl: 'images/group 2.png',
                      alignment: Alignment.centerLeft,
                    ),
                    OnBoardingItem(
                      title: AppLocalizations.of(context)!.on_boarding_title3,
                      description:
                      AppLocalizations.of(context)!.on_boarding_hint3,
                      imageUrl: 'images/group 3.png',
                      alignment: Alignment.centerLeft,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 33,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OnBoardingIndicator(
                    Selected: controller.isEnglish(context)
                        ? controller.currentPageIndex == 2
                        : controller.currentPageIndex == 0,
                  ),
                  OnBoardingIndicator(
                    Selected: controller.currentPageIndex == 1,
                  ),
                  OnBoardingIndicator(
                    Selected: controller.isEnglish(context)
                        ? controller.currentPageIndex == 0
                        : controller.currentPageIndex == 2,
                  ),
                ],
              ),
              const SizedBox(
                height: 81,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 16, right: 16),
                child: controller.currentPageIndex == 0 ? controller.oneButton(context) : controller.twoButtons(context),
              ),
            ],
          ),
        ),
      );
    },);
  }
}
