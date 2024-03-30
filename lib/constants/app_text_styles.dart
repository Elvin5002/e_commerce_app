import 'package:e_commerce_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles{
  AppTextStyles._();

  static const _w500s18white = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 19,
    color: AppColors.white,
  );

  static const _w400s14white = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 10,
    color: AppColors.white,
  );

  static const _w500s14grey = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: AppColors.grey,
  );

  static const titleStyle = _w500s18white;
  static const bodyStyle = _w400s14white;

  static final descStyle = _w500s18white.copyWith(
    color: AppColors.black,
    fontWeight: FontWeight.w600,
    fontSize: 14,
  );

  static final homeTxtStyle = _w400s14white.copyWith(
    color: AppColors.orange,
  );

  static const _w800s16black = TextStyle(
    color: AppColors.black,
    fontWeight: FontWeight.w800,
    fontSize: 14,
  );

  static const ratioStyle = _w800s16black;

  static final priceStyle = _w800s16black.copyWith(
    color: AppColors.orange,
  );

  static const midTxtStyle = _w500s14grey;
  
}