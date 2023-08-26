import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FavoriteIcon extends StatefulWidget {
  const FavoriteIcon({Key? key}) : super(key: key);

  @override
  State<FavoriteIcon> createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      child: Container(
        alignment: Alignment.center,
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
              width: 1,
              color: const Color(0xffF4F4F4)),
        ),
        child: isFavorite
            ? SvgPicture.asset('images/favorite.svg')
            : SvgPicture.asset(
            'images/favorite_border.svg'),
      ),
    );
  }
}
