import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PersonContainer extends StatefulWidget {
   PersonContainer({Key? key,
   required this.imageUrl,
   required this.tick,
   }) : super(key: key);

  String imageUrl;
  bool tick;

  @override
  State<PersonContainer> createState() => _PersonContainerState();
}

class _PersonContainerState extends State<PersonContainer> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Color(0xffF4F4F4),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Container(
              width: 50,
              height: 50,
              child: Image.asset(widget.imageUrl),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            setState(() {
              widget.tick = !widget.tick;
            });
          },
          child: Container(
            height: 90,
            width: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               widget.tick? Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset('images/tick2.svg'),
                ):Container(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
