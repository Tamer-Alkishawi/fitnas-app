import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MealScreenRow extends StatelessWidget {
   MealScreenRow({Key? key,
  required this.svgUrl,
  required this.title,
  }) : super(key: key);

  String svgUrl;
  String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 34,
            ),
            Container(
              height: 20,
              width: 20,
              child: SvgPicture.asset(svgUrl),
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              title,
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Bahij',
                color: Colors.black,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Divider(
          indent: 34,
          thickness: 1,
          color: Color(0xffF4F4F4),
        ),
      ],
    );
  }
}
