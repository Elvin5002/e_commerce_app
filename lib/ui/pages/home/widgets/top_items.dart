import 'package:e_commerce_app/constants/app_paddings.dart';
import 'package:e_commerce_app/constants/app_radiuses.dart';
import 'package:e_commerce_app/constants/app_text_styles.dart';
import 'package:e_commerce_app/extentions/num_extentions.dart';
import 'package:e_commerce_app/ui/pages/home/widgets/shop_icon.dart';
import 'package:flutter/material.dart';

class TopItems extends StatelessWidget {
const TopItems({ Key? key, required this.color, required this.text, required this.image }) : super(key: key);

final Color color;
final String text;
final String image;

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: AppPaddings.lr5,
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: AppRadiuses.a10
          ),
          child: Padding(
            padding: AppPaddings.a20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      text,
                      style: AppTextStyles.titleStyle,
                    ),
                    20.h,
                    const ShopIcon()
                  ],
                ),
                5.w,
                Image.asset(image)
              ],
          ),
        ),
      )
    );
  }
}