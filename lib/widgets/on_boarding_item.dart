import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({
    Key? key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.alignment,
  }) : super(key: key);

  final String title;
  final String description;
  final String imageUrl;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          alignment: alignment,
          width: double.infinity,
          child: Image.asset(imageUrl),
        ),
        const SizedBox(
          height: 33,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      title,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.black,
                          letterSpacing: 0.07,
                          fontFamily: 'Bahij'),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 52,
                    height: 4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xff8AB23B)),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                description,
                textAlign: TextAlign.start,
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color(0xFF44515E),
                    letterSpacing: 0.07,
                    fontFamily: 'Bahij'),
              )
            ],
          ),
        )
      ],
    );
  }
}
