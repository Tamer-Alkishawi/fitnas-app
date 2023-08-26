import 'package:flutter/material.dart';

class FAQContainer extends StatefulWidget {
  FAQContainer({super.key,
    required this.text1,
    required this.text2,
  });

  String text1;
  String text2;

  @override
  State<FAQContainer> createState() => _FAQContainerState();
}

class _FAQContainerState extends State<FAQContainer> {
  bool tapped = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          tapped = !tapped;
        });
      },
      child: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffF8F8F8),
          borderRadius: BorderRadius.circular(8),
          border: tapped?  null :Border.all(
              width: 1,
              color: Color(0xff8AB23B)
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.text1,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Bahij',
                    letterSpacing: 0.07,
                    fontWeight: FontWeight.w600,
                    color: tapped? Colors.black : Color(0xff8AB23B)
                  ),
                ),
                tapped
                    ? Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.black,
                        size: 20,
                      )
                    : Icon(
                        Icons.keyboard_arrow_up,
                        color: Colors.black,
                        size: 20,
                      )
              ],
            ),
            tapped? Container() :Column(
              children: [
                SizedBox(height: 8,),
                Text(widget.text2,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Bahij',
                    color: Color(0xff606E7D),
                    letterSpacing: 0.07,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
