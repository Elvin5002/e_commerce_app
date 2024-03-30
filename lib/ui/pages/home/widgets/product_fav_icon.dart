import 'package:e_commerce_app/constants/app_icons.dart';
import 'package:flutter/material.dart';

class ProductFavIcon extends StatefulWidget {
  const ProductFavIcon({Key? key}) : super(key: key);

  @override
  _ProductFavIconState createState() => _ProductFavIconState();
}

class _ProductFavIconState extends State<ProductFavIcon> {
  late bool isClick = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isClick = !isClick;
        });
      },
      child: isClick ? AppIcons.activeFav : AppIcons.deactiveFav,
    );
  }
}
