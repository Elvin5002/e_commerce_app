import 'package:e_commerce_app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppIcons{
  AppIcons._();

  static const Icon ratio = Icon(Icons.star, color: AppColors.yellow, size: 20,);
  static const Icon basket = Icon(FontAwesomeIcons.basketShopping, color: AppColors.white,);
  static const Icon activeFav = Icon(Icons.favorite, color: AppColors.red,);
  static const Icon deactiveFav = Icon(Icons.favorite_border_outlined, color: AppColors.red,);
  static const Icon share = Icon(Icons.share_outlined);
  static const Icon message = Icon(Icons.message_outlined);

}