import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:project_one/screens/login_screen/login_screen.dart';

class OnBoardingController extends GetxController{

  int currentPageIndex = 0;
  PageController pagecontroller = PageController();

  @override
  void onInit() {
    pagecontroller = PageController();
    super.onInit();
  }

  @override
  void dispose() {
    pagecontroller.dispose();
    super.dispose();
    super.onInit();
  }

   isEnglish(BuildContext context){
  final isEnglish = Localizations.localeOf(context).languageCode == 'ar';
  return isEnglish;
  }

  Widget oneButton(BuildContext context) {
    return isEnglish(context)
        ? Container(
      height: 55,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: const Color(0xff8AB23B),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
          ),
        ),
        onPressed: () {
          pagecontroller.nextPage(
              duration: const Duration(seconds: 1),
              curve: Curves.easeOutCirc);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Text(
                  AppLocalizations.of(context)!.next,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Bahij',
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            ),
          ],
        ),
      ),
    )
        : Container(
      height: 55,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: const Color(0xff8AB23B),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
          ),
        ),
        onPressed: () {
          pagecontroller.nextPage(
              duration: const Duration(seconds: 1),
              curve: Curves.easeOutCirc);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Text(
                  AppLocalizations.of(context)!.next,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Bahij',
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            const Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget twoButtons(BuildContext context) {
    return isEnglish(context)
        ? Container(
      height: 55,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 55,
            width: 174,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff8AB23B),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11)),
              ),
              onPressed: () {
                if (currentPageIndex != 2) {
                  pagecontroller.nextPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeOutCirc);
                } else {
                  Get.to(LoginScreen());
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      AppLocalizations.of(context)!.next,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Bahij',
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.07,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 55,
            width: 174,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11),
                  side: const BorderSide(
                    color: Color(0xff8AB23B),
                    width: 2,
                  ),
                ),
              ),
              onPressed: () {
                pagecontroller.previousPage(
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeOutCirc);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      AppLocalizations.of(context)!.previous,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 14,
                          fontFamily: 'Bahij',
                          color: Color(0xff8AB23B),
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.07),
                    ),
                  ),
                  const Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          color: Color(0xff8AB23B),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    )
        : Container(
      height: 55,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 55,
            width: 174,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11),
                  side: const BorderSide(
                    color: Color(0xff8AB23B),
                    width: 2,
                  ),
                ),
              ),
              onPressed: () {
                pagecontroller.previousPage(
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeOutCirc);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Color(0xff8AB23B),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      AppLocalizations.of(context)!.previous,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 14,
                          fontFamily: 'Bahij',
                          color: Color(0xff8AB23B),
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.07),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 55,
            width: 174,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff8AB23B),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11)),
              ),
              onPressed: () {
                if (currentPageIndex != 2) {
                  pagecontroller.nextPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeOutCirc);
                } else {
                  Get.to(LoginScreen());
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      AppLocalizations.of(context)!.next,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Bahij',
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.07,
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}