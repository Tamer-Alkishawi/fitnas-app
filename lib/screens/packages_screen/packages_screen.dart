import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/packages_screen/packages_controller.dart';
import 'package:project_one/widgets/package_screen_bar.dart';
import 'package:project_one/widgets/silver_coach_package.dart';

class PackagesScreen extends StatefulWidget {
  const PackagesScreen({Key? key}) : super(key: key);

  @override
  State<PackagesScreen> createState() => _PackagesScreenState();
}

class _PackagesScreenState extends State<PackagesScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PackageController>(
      init: PackageController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.5,
            shadowColor: Color(0xffF8F8F8),
            title: Text(
              AppLocalizations.of(context)!.the_packages,
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
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SafeArea(
              child: ListView(
                children: [
                  const SizedBox(
                    height: 14,
                  ),
                  Container(
                    width: double.infinity,
                    height: 55,
                    child: TextField(
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xffF8F8F8),
                          hintText: AppLocalizations.of(context)!
                              .search_for_package_name,
                          hintStyle: const TextStyle(
                              color: Color(0xffB5BEC8),
                              fontSize: 12,
                              fontFamily: 'Bahij',
                              letterSpacing: 0.07),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Color(0xff595757),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          contentPadding: const EdgeInsets.only(
                              top: 20, bottom: 17, right: 16)),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 27,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: controller.PackagesMenuTwo(context).length,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            PackagesScreenBar(
                              text: controller.PackagesMenuTwo(context)[index]
                                  .text,
                              isClicked:
                                  controller.PackagesMenuTwo(context)[index]
                                      .isClicked,
                              onTap: controller.PackagesMenuTwo(context)[index]
                                  .onTap,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: controller.PackagesMenuOne(context).length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SilverCoachPackageTwoContainer(
                            imageUrl1:
                                controller.PackagesMenuOne(context)[index]
                                    .imageUrl1!,
                            imageUrl2:
                                controller.PackagesMenuOne(context)[index]
                                    .imageUrl2!,
                            hint: controller.PackagesMenuOne(context)[index]
                                .hint!,
                            days: controller.PackagesMenuOne(context)[index]
                                .days!,
                            numberOfDays:
                                controller.PackagesMenuOne(context)[index]
                                    .numberOfDays!,
                            price: controller.PackagesMenuOne(context)[index]
                                .price!,
                            resturentName:
                                controller.PackagesMenuOne(context)[index]
                                    .resturentName!,
                            verticalPadding:
                                controller.PackagesMenuOne(context)[index]
                                    .verticalPadding!,
                            imageHeight:
                                controller.PackagesMenuOne(context)[index]
                                    .imageHeight!,
                            rateVisiblity:
                                controller.PackagesMenuOne(context)[index]
                                    .rateVisiblity!,
                            ratingVisiblity:
                                controller.PackagesMenuOne(context)[index]
                                    .ratingVisiblity!,
                            resturentNameVisibility:
                                controller.PackagesMenuOne(context)[index]
                                    .resturentNameVisibility!,
                            favoriteIconVisibility:
                                controller.PackagesMenuOne(context)[index]
                                    .favoriteIconVisibility!,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
