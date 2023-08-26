import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/resturent_screen/resturent_screen.dart';
import 'package:project_one/widgets/favorite_icon.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ResturentScreenContainer extends StatefulWidget {
  ResturentScreenContainer({
    Key? key,
    required this.imageUrl,
    required this.resturentName,
    required this.resturentdescription,
    required this.resturentlocation,
  }) : super(
          key: key,
        );
  String imageUrl;
  String resturentName;
  String resturentdescription;
  String resturentlocation;

  @override
  State<ResturentScreenContainer> createState() =>
      _ResturentScreenContainerState();
}

class _ResturentScreenContainerState extends State<ResturentScreenContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Get.to(ResturentScreen());},
      child: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              width: 1,
              color: Color(0xffF4F4F4),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    child: Image.asset(widget.imageUrl),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.resturentName,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          fontSize: 14,
                          fontFamily: 'Bahij',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
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
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset('images/description.svg'),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            widget.resturentdescription,
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                              fontSize: 10,
                              fontFamily: 'Bahij',
                              fontWeight: FontWeight.w500,
                              color: Color(0xff595757),
                            ),
                          ),


                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset('images/location.svg'),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            widget.resturentlocation,
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                              fontSize: 10,
                              fontFamily: 'Bahij',
                              fontWeight: FontWeight.w500,
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
            const FavoriteIcon(),

          ],
        ),
      ),
    );
  }
}
