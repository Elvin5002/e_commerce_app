import 'package:e_commerce_app/constants/app_colors.dart';
import 'package:e_commerce_app/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class BottomIcons extends StatelessWidget {
  const BottomIcons({Key? key, required this.icon, required this.text})
      : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: AppColors.white,
          size: 18,
        ),
        //2.h,
        Text(
          text,
          style: AppTextStyles.bodyStyle,
        )
      ],
    );
  }
}
