import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WalletContainer extends StatelessWidget {
   WalletContainer({Key? key,
   required this.svgUrl,
   required this.price,
   required this.description,
   required this.date,
   required this.dividerVisibility,
   }) : super(key: key);

  String svgUrl;
  String price;
  String description;
  String date;
  bool dividerVisibility;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 24,
                    width: 24,
                    child: SvgPicture.asset(svgUrl),
                  ),
                  SizedBox(width: 15,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            price,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontFamily: 'Bahij',
                              letterSpacing: 0.07,
                            ),
                          ),
                          SizedBox(width: 4,),
                          Text(
                            'ر.س',
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontFamily: 'Bahij',
                              letterSpacing: 0.07,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4,),
                      Text(
                        description,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Color(0xff606E7D),
                          fontFamily: 'Bahij',
                          letterSpacing: 0.07,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Text(
                date,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 10,
                  color: Color(0xff606E7D),
                  fontFamily: 'Bahij',
                  letterSpacing: 0.07,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15,),
        dividerVisibility?Divider(
          thickness: 1,
          color: Color(0xffF0F0F0),
        ):Container(),
      ],
    );
  }
}
