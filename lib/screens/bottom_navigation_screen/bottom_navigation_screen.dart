import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/bottom_navigation_screen/bottom_navigation_controller.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}
class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavigationController>(
      init: BottomNavigationController(),
      builder: (controller){
      return Scaffold(
        extendBodyBehindAppBar: true,
        bottomNavigationBar: Container(
          height: 76,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                spreadRadius: 0,
                blurRadius: 50,
                offset: const Offset(0, 0), // Shadow offset
              ),
            ],
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (int currentIndex) {
              setState(() {
                controller.currentIndex = currentIndex;
              });
            },
            currentIndex: controller.currentIndex,
            items: [
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset('images/home_shape_unselected.svg'),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      AppLocalizations.of(context)!.home,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 10,
                        fontFamily: 'Bahij',
                        fontWeight: FontWeight.w500,
                        color: Color(0xffA3A2B2),
                      ),
                    ),
                  ],
                ),
                label: '',
                activeIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset('images/home_shape.svg'),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      AppLocalizations.of(context)!.home,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 10,
                        fontFamily: 'Bahij',
                        fontWeight: FontWeight.w700,
                        color: Color(0xff8AB23B),
                      ),
                    ),
                  ],
                ),
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 4,
                    ),
                    SvgPicture.asset('images/order_shape_unselected.svg'),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      AppLocalizations.of(context)!.subscriptions,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 10,
                        fontFamily: 'Bahij',
                        fontWeight: FontWeight.w500,
                        color: Color(0xffA3A2B2),
                      ),
                    ),
                  ],
                ),
                label: '',
                activeIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 4,
                    ),
                    SvgPicture.asset('images/order_shape.svg'),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      AppLocalizations.of(context)!.subscriptions,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 10,
                        fontFamily: 'Bahij',
                        fontWeight: FontWeight.w700,
                        color: Color(0xff8AB23B),
                      ),
                    ),
                  ],
                ),
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset('images/user_shape_unselected.svg'),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      AppLocalizations.of(context)!.account,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 10,
                        fontFamily: 'Bahij',
                        fontWeight: FontWeight.w500,
                        color: Color(0xffA3A2B2),
                      ),
                    ),
                  ],
                ),
                label: '',
                activeIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset('images/user_shape.svg'),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      AppLocalizations.of(context)!.account,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 10,
                        fontFamily: 'Bahij',
                        fontWeight: FontWeight.w700,
                        color: Color(0xff8AB23B),
                      ),
                    ),
                  ],
                ),
              ),


            ],
          ),
        ),
        body: controller.screens[controller.currentIndex],
      );
    },);
  }
}
