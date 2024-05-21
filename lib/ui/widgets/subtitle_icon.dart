import 'package:e_commerce_app/utils/constants/app_colors.dart';
import 'package:e_commerce_app/utils/constants/app_radiuses.dart';
import 'package:e_commerce_app/utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class SubtitleIcon extends StatelessWidget {
const SubtitleIcon({ Key? key, required this.text }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context){
    return Container(
      width: 70,
      height: 25,
      decoration: const BoxDecoration(
        color: AppColors.orange,
        borderRadius: AppRadiuses.a30
      ),
      child: Center(
        child: Text(
          text,
          style: AppTextStyles.bodyStyle,
        ),
      )
    );
  }
}