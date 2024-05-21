import 'package:e_commerce_app/utils/constants/app_colors.dart';
import 'package:e_commerce_app/utils/constants/app_radiuses.dart';
import 'package:flutter/material.dart';

class AppBorders{
  AppBorders._();

  static const inputBorder = OutlineInputBorder(
    borderRadius: AppRadiuses.a30,
    borderSide: BorderSide(color: Colors.grey,),
  );

  static const focusedBorder = OutlineInputBorder(
    borderRadius: AppRadiuses.a30,
    borderSide: BorderSide(
      color: AppColors.grey,
      width: 2
    ),
  );
}