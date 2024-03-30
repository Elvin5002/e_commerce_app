import 'package:e_commerce_app/constants/app_colors.dart';
import 'package:e_commerce_app/constants/app_radiuses.dart';
import 'package:e_commerce_app/constants/app_text_styles.dart';
import 'package:e_commerce_app/constants/app_texts.dart';
import 'package:flutter/material.dart';

class ShopIcon extends StatelessWidget {
const ShopIcon({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      width: 80,
      height: 25,
      decoration: const BoxDecoration(
        color: AppColors.black,
        borderRadius: AppRadiuses.a30
      ),
      child: const Center(
        child: Text(
          AppTexts.shop,
          style: AppTextStyles.bodyStyle,
        ),
      )
    );
  }
}