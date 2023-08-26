import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PackagesScreenBar extends StatelessWidget {
  PackagesScreenBar({
    super.key,
    required this.text,
    required this.isClicked,
    required this.onTap,
  });

  String text;
  bool isClicked;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: isClicked
          ? Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Bahij',
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    width: 24,
                    height: 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xff8AB23B),
                    ),
                  )
                ],
              ),
          )
          : Container(
            child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                    text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Bahij',
                        color: Color(0xffA3A2B2)),
                  ),
                const SizedBox(
                  height: 4,
                ),
                Container(
                  width: 24,
                  height: 4,
                )
              ],
            ),
          ),
    );
  }
}
