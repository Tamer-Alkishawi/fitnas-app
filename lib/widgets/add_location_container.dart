import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddLocationContainer extends StatelessWidget {
   AddLocationContainer({
    super.key,
    required this.svgUrl1,
    required this.svgUrl2,
    required this.title,
    required this.isActive,
    required this.onTap,
  });
  String svgUrl1;
  String svgUrl2;
  String title;
  bool isActive;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
            color: Color(0xffF8F8F8),
            borderRadius: BorderRadius.circular(22),
            border: Border.all(
              width: 1,
              color: isActive ? Color(0xff8AB23B): Colors.transparent,
            )),
        child: Row(
          children: [
            isActive?SvgPicture.asset(svgUrl1):SvgPicture.asset(svgUrl2),
            SizedBox(
              width: 8,
            ),
            Text(
              title,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Bahij',
                letterSpacing: 0.07,
                fontWeight: FontWeight.w600,
                color: isActive? Color(0xff8AB23B): Color(0xffB5BEC8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}