import 'package:flutter/material.dart';

class PackagesContainer extends StatefulWidget {
  PackagesContainer({
    Key? key,
    required this.imageUrl,
    required this.text1,
    required this.text2,
    required this.borderColor,
    required this.icon,
    required this.onTap,
    required this.isActive,
  }) : super(key: key);

  final String imageUrl;
  final String text1;
  final String text2;
  final Color borderColor;
  final bool icon;
  final VoidCallback onTap;
  final bool isActive;

  @override
  State<PackagesContainer> createState() => _PackagesContainerState();
}

class _PackagesContainerState extends State<PackagesContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 83,
        height: 91,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 1.5,
            color:
            widget.isActive ? const Color(0xff8AB23B) : widget.borderColor,
          ),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(widget.imageUrl),
                ),
                Text(
                  widget.text1,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Bahij',
                  ),
                ),
                Text(
                  widget.text2,
                  style: const TextStyle(
                    height: 1,
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Bahij',
                  ),
                ),
              ],
            ),
            if (widget.isActive)
              Container(
                width: 20,
                height: 8,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.arrow_drop_down,
                  size: 25,
                  color: Color(0xff8AB23B),
                ),
              ),
          ],
        ),
      ),
    );
  }
}