import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddressesContainer extends StatefulWidget {
   AddressesContainer({
    super.key,
     required this.svgUrl,
     required this.address,
     required this.location,
     required this.visible,
  });

   String svgUrl;
   String address;
   String location;
   bool visible;

  @override
  State<AddressesContainer> createState() => _AddressesContainerState();
}

class _AddressesContainerState extends State<AddressesContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xffF8F8F8),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(widget.svgUrl),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    widget.address,
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                      fontSize: 12,
                      fontFamily: 'Bahij',
                      letterSpacing: 0.07,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  widget.visible?Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 9, vertical: 5),
                        decoration: BoxDecoration(
                          color: Color(0xff8AB23B),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          AppLocalizations.of(context)!.the_default,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 10,
                            fontFamily: 'Bahij',
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.07,
                            color: Color(0xffF8F8F8),
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                    ],
                  ):Container(height: 23,),
                  GestureDetector(
                    child: SvgPicture.asset('images/trash.svg'),
                  ),
                  SizedBox(width: 20,),
                  GestureDetector(
                    child: SvgPicture.asset('images/pen.svg'),
                  ),
                  SizedBox(width: 6,),
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
              SizedBox(width: 30,),
              Text(
                widget.location,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 12,
                  fontFamily: 'Bahij',
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.07,
                  color: Color(0xff606E7D),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
