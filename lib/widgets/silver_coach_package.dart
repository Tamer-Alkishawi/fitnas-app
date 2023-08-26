import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/silver_coach_package_screen/silver_coach_package_screen.dart';
import 'package:project_one/widgets/favorite_icon.dart';
import 'package:rating_dialog/rating_dialog.dart';

class SilverCoachPackageTwoContainer extends StatefulWidget {
  SilverCoachPackageTwoContainer({
    super.key,
    required this.imageUrl1,
    required this.imageUrl2,
    required this.hint,
    required this.days,
    required this.numberOfDays,
    required this.price,
    required this.resturentName,
    required this.verticalPadding,
    required this.imageHeight,
    required this.rateVisiblity,
    required this.ratingVisiblity,
    required this.resturentNameVisibility,
    required this.favoriteIconVisibility,
  });

  String imageUrl1;
  String imageUrl2;
  String hint;
  String days;
  String numberOfDays;
  String price;
  String resturentName;
  double verticalPadding;
  double imageHeight;
  bool rateVisiblity;
  bool ratingVisiblity;
  bool resturentNameVisibility;
  bool favoriteIconVisibility;

  @override
  State<SilverCoachPackageTwoContainer> createState() =>
      _SilverCoachPackageTwoContainerState();
}

class _SilverCoachPackageTwoContainerState
    extends State<SilverCoachPackageTwoContainer> {
  Widget bottomLeft() {
    int userRate = 0;
    bool rated = false;
    if (widget.rateVisiblity) {
      return Row(
        children: [
          SvgPicture.asset('images/star.svg'),
          const SizedBox(
            width: 4,
          ),
          const Text(
            '4/5',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Bahij',
              fontWeight: FontWeight.w600,
              fontSize: 10,
              color: Color(0xff595757),
            ),
          ),
        ],
      );
    } else if (widget.ratingVisiblity) {
      final _dialog = RatingDialog(
        initialRating: 1.0,
        title: Text(
          AppLocalizations.of(context)!.alomda_restaurant,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        message: Text(
          AppLocalizations.of(context)!.rate_this_silver_coach_package,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 15),
        ),
        commentHint: AppLocalizations.of(context)!.tell_us_your_comments,
        image: Image.asset('images/example6.png'),
        submitButtonText: AppLocalizations.of(context)!.rate,
        onCancelled: () => print('cancelled'),
        onSubmitted: (response) {
          print('rating: ${response.rating}, comment: ${response.comment}');
          setState(() {
            userRate = response.rating.toInt();
            print(userRate);
            rated = true;
          });
        },
      );
      return rated
          ? Row(
              children: [
                SvgPicture.asset('images/star.svg'),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  '$userRate/5',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Bahij',
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                    color: Color(0xff595757),
                  ),
                ),
              ],
            )
          : GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (context) => _dialog,
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                decoration: BoxDecoration(
                    color: Color(0xffF3AD39).withOpacity(0.06),
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: Color(0xffF3AD39),
                      width: 1,
                    )),
                child: Row(
                  children: [
                    SvgPicture.asset('images/star.svg'),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      AppLocalizations.of(context)!.rate_supscribtion,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'Bahij',
                        color: Color(0xffF3AD39),
                      ),
                    ),
                  ],
                ),
              ),
            );
    } else {
      return Text('');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: ()=> Get.to(SilverCoachPackageScreen()),
                child: Container(
                  width: 209.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      width: 1,
                      color: const Color(0xFFf4f4f4),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: widget.imageHeight,
                        child: Image.asset(
                          widget.imageUrl1,
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(
                        height: 10.7,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 11.5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.hint,
                              textAlign: TextAlign.right,
                              style: const TextStyle(
                                fontSize: 12,
                                fontFamily: 'Bahij',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            widget.favoriteIconVisibility? FavoriteIcon() : Container(
                              width: 35,
                              height: 35,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8.14,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset('images/time.svg'),
                                const SizedBox(
                                  width: 8.06,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      widget.numberOfDays,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Bahij',
                                        color: Color(0xff595757),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      widget.days,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Bahij',
                                        color: Color(0xff595757),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset('images/price.svg'),
                                const SizedBox(
                                  width: 8.06,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      widget.price,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Bahij',
                                        color: Color(0xff595757),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.price,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Bahij',
                                        color: Color(0xff595757),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 6.48,
                      ),
                      if (widget.resturentNameVisibility)
                        Column(
                          children: [
                            const Divider(
                              thickness: 1,
                              color: Color(0xffF4F4F4),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: widget.verticalPadding),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 18.29,
                                        height: 18.29,
                                        child: Image.asset(widget.imageUrl2),
                                      ),
                                      const SizedBox(
                                        width: 5.52,
                                      ),
                                      Text(
                                        widget.resturentName,
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          fontSize: 10,
                                          fontFamily: 'Bahij',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  bottomLeft(),
                                ],
                              ),
                            ),
                          ],
                        )
                      else
                        SizedBox(
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10,),
      ],
    );
  }
}
