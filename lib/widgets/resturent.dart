import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/resturent_screen/resturent_screen.dart';
import 'favorite_icon.dart';

class Resturent extends StatefulWidget {
  Resturent({
    Key? key,
    required this.imageUrl,
    required this.resturentName,
    required this.description,
    required this.address,
  }) : super(key: key);

  String imageUrl;
  String resturentName;
  String description;
  String address;

  @override
  State<Resturent> createState() => _ResturentState();
}

class _ResturentState extends State<Resturent> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Get.to(ResturentScreen());},
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    width: 1,
                    color: const Color(0xFFf4f4f4),
                  ),
                ),
                padding: const EdgeInsets.all(10),
                height: 176,
                width: 170,
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
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
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 6,
                        ),
                        Image.asset(widget.imageUrl),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          widget.resturentName,
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            fontSize: 12,
                            fontFamily: 'Bahij',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset('images/description.svg'),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              widget.description,
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
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset('images/location.svg'),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              widget.address,
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
              Container(
                height: 194,
                width: 165,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FavoriteIcon(),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(width: 10,),
        ],
      ),
    );
  }
}
