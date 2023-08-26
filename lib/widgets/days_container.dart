import 'package:flutter/material.dart';

class DaysContainer extends StatefulWidget {
   DaysContainer({
    super.key,
    required this.day,
    required this.containerColor,
    required this.textColor,
  });

  String day;
  Color containerColor;
  Color textColor;

  @override
  State<DaysContainer> createState() => _DaysContainerState();
}

class _DaysContainerState extends State<DaysContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: widget.containerColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 1,
          color: Color(0xffEEF0F1)
        )
      ),
      child: Center(
        child: Text(
          widget.day,
          textAlign: TextAlign.center,
          style:  TextStyle(
              fontSize: 12,
              fontFamily: 'Bahij',
              fontWeight: FontWeight.w600,
              color: widget.textColor),
        ),
      ),
    );
  }
}