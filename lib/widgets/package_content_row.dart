import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PackageContentRow extends StatelessWidget {
   PackageContentRow({Key? key, required this.title}) : super(key: key);

  String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Row(
          children: [
            SizedBox(
              width: 34,
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
