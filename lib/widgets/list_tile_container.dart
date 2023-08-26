import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ListTileContainer extends StatefulWidget {
  ListTileContainer({
    super.key,
    required this.svgUrl,
    required this.title,
    required this.dividerVisibility,
    this.route,
  });

  String svgUrl;
  String title;
  Widget? route;
  bool dividerVisibility;

  @override
  State<ListTileContainer> createState() => _ListTileContainerState();
}

class _ListTileContainerState extends State<ListTileContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(widget.route!=null)
        Get.to(widget.route);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                      Container(
                        width: 18,
                        height: 18,
                        child: SvgPicture.asset(widget.svgUrl)),
                    SizedBox(
                      width: 11,
                    ),
                    Text(
                      widget.title,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        fontSize: 12,
                        fontFamily: 'Bahij',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xff595757),
                    size: 16,
                  ),
                ),
              ],
            ),
            widget.dividerVisibility
                ? Divider(
                    thickness: 1,
                    color: Color(0xffEFEFEF),
                    indent: 20,
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
