import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SliderContainer extends StatefulWidget {
  SliderContainer({
    Key? key,
    required this.title,
    required this.showDescription,
    required this.ButtonTitle,
    required this.value,
  }) : super(key: key);

  final String title;
  final bool showDescription;
  final String ButtonTitle;
  double value;

  @override
  State<SliderContainer> createState() => _SliderContainerState();
}

class _SliderContainerState extends State<SliderContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  widget.title,
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Bahij',
                    color: Colors.black,
                    letterSpacing: 0.07,
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                if (widget.showDescription)
                  Text(
                    AppLocalizations.of(context)!.optional,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Bahij',
                      color: Color(0xffA3A2B2),
                      letterSpacing: 0.07,
                    ),
                  ),


              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(23),
                  side: const BorderSide(
                    color: Color(0xff44515E),
                    width: 1,
                  ),
                ),
              ),
              onPressed: () {},
              child: Text(
                widget.ButtonTitle,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Bahij',
                  color: Color(0xff44515E),
                  letterSpacing: 0.07,
                ),
              ),
            ),

          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
