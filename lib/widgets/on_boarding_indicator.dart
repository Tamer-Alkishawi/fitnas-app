import 'package:flutter/material.dart';

class OnBoardingIndicator extends StatelessWidget {
  const OnBoardingIndicator({
    Key? key,
    required this.Selected,
  }) :  super(key: key);

  final bool Selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(end: 4),
      width: Selected ? 17 : 5,
      height: 5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.5),
        color: Selected ? Colors.black : Color(0xffD9D9D9),
      ),
    );
  }
}
