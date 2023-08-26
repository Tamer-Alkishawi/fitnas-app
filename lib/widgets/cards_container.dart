import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardsContainer extends StatelessWidget {
   CardsContainer({
    super.key,
     required this.svgUrl,
     required this.title,
     required this.isActive,
     required this.onTap,
  });

   String svgUrl;
   String title;
   bool isActive;
   VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 55,
          padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 18,
          ),
          decoration: BoxDecoration(
            color: Color(0xffF8F8F8),
            border: Border.all(
              width: 1,
              color: isActive? Color(0xff8AB23B):Colors.transparent,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(svgUrl),
              SizedBox(
                width: 8,
              ),
              Text(
                title,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontFamily: 'Bahij',
                  letterSpacing: 0.07,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}