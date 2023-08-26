import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotificationContainer extends StatelessWidget {
  NotificationContainer(
      {required this.svgUrl,
      required this.title,
      required this.description,
      required this.date,
      required this.bold,
      });

  String svgUrl;
  String title;
  String description;
  String date;
  bool bold;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: Color(0xffF8F8F8),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: Color(0xffE5F2ED),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        svgUrl,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    title,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Bahij',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    date,
                    textAlign: TextAlign.start,
                    style:  TextStyle(
                      fontSize: 12,
                      fontFamily: 'Bahij',
                      color: bold? Colors.black : Color(0xffB5BEC8),
                      letterSpacing: 0.07,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  description,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontSize: 12,
                    fontFamily: 'Bahij',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.07,
                    color: Color(0xff606E7D),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
