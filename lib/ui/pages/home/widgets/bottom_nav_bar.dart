import 'package:e_commerce_app/constants/app_colors.dart';
import 'package:e_commerce_app/constants/app_paddings.dart';
import 'package:e_commerce_app/constants/app_radiuses.dart';
import 'package:e_commerce_app/constants/app_texts.dart';
import 'package:e_commerce_app/ui/pages/home/widgets/bottom_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56, 
      padding: AppPaddings.a12,
      margin: AppPaddings.lr18,
      decoration: const BoxDecoration(
        color: AppColors.darkgrey,
        borderRadius: AppRadiuses.a24,
        boxShadow: [
          BoxShadow(
            color: AppColors.darkgrey,
            offset: Offset(0, 20),
            blurRadius: 20,
          ),
        ],
      ),
      child: const Center(
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomIcons(icon: FontAwesomeIcons.house, text: AppTexts.home),
          BottomIcons(icon: FontAwesomeIcons.compass, text: AppTexts.discover),
          BottomIcons(icon: FontAwesomeIcons.heart, text: AppTexts.wishlist),
          BottomIcons(icon: Icons.message, text: AppTexts.message),
          BottomIcons(icon: FontAwesomeIcons.user, text: AppTexts.profile),
        ],
      )),
    );
  }
}
