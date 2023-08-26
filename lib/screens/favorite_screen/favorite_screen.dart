import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/favorite_screen/favorite_controller.dart';
import '../../widgets/resturent_screen_container.dart';
import '../../widgets/silver_coach_package.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FavoriteController>(
      init: FavoriteController(),
      builder: (controller){
      return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.5,
          shadowColor: Color(0xffF8F8F8),
          title: Text(
            'المفضلة',
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
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                  color: const Color(0xffF8F8F8),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            controller.ButtonColor1 = Colors.transparent;
                            controller.ButtonColor2 = const Color(0xff44515E);
                            controller.TextColor2 = Colors.white;
                            controller.TextColor1 = Colors.black;
                            controller.widgetVisible = true;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            primary: controller.ButtonColor2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(23),
                            ),
                            elevation: 0),
                        child: Text(
                          'المطاعم',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Bahij',
                            fontWeight: FontWeight.w500,
                            color: controller.TextColor2,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            controller.ButtonColor1 = const Color(0xff44515E);
                            controller.ButtonColor2 = Colors.transparent;
                            controller.TextColor1 = Colors.white;
                            controller.TextColor2 = Colors.black;
                            controller.widgetVisible = false;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: controller.ButtonColor1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23),
                          ),
                          elevation: 0,
                        ),
                        child: Text(
                          'الباقات',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Bahij',
                            fontWeight: FontWeight.w500,
                            color: controller.TextColor1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            controller.widgetVisible
                ? Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: controller.favoriteMenuOne(context).length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ResturentScreenContainer(
                        imageUrl:
                        controller.favoriteMenuOne(context)[index].imageUrl,
                        resturentName: controller.favoriteMenuOne(context)[index].resturentName,
                        resturentdescription: controller.favoriteMenuOne(context)[index].resturentdescription,
                        resturentlocation: controller.favoriteMenuOne(context)[index].resturentlocation,),
                      SizedBox(height: 10,),
                    ],
                  );
                },
              ),
            )
                : Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: controller
                    .favoriteMenuTwo(context)
                    .length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SilverCoachPackageTwoContainer(
                        imageUrl1: controller.favoriteMenuTwo(context)[index]
                            .imageUrl1,
                        imageUrl2: controller.favoriteMenuTwo(context)[index]
                            .imageUrl2,
                        hint: controller.favoriteMenuTwo(context)[index]
                            .hint,
                        days: controller.favoriteMenuTwo(context)[index]
                            .days,
                        numberOfDays: controller.favoriteMenuTwo(context)[index]
                            .numberOfDays,
                        price: controller.favoriteMenuTwo(context)[index]
                            .price,
                        resturentName: controller.favoriteMenuTwo(context)[index]
                            .resturentName,
                        verticalPadding: controller.favoriteMenuTwo(context)[index]
                            .verticalPadding,
                        imageHeight: controller.favoriteMenuTwo(context)[index]
                            .imageHeight,
                        rateVisiblity: controller.favoriteMenuTwo(context)[index]
                            .rateVisiblity,
                        ratingVisiblity: controller.favoriteMenuTwo(context)[index]
                            .ratingVisiblity,
                        resturentNameVisibility: controller.favoriteMenuTwo(context)[index]
                            .resturentNameVisibility,
                        favoriteIconVisibility: controller.favoriteMenuTwo(context)[index]
                            .favoriteIconVisibility,),
                      SizedBox(height: 10,),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      );
    },);
  }
}
