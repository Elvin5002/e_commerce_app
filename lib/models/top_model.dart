import 'package:e_commerce_app/constants/app_assets.dart';
import 'package:e_commerce_app/constants/app_colors.dart';
import 'package:e_commerce_app/constants/app_texts.dart';
import 'package:flutter/material.dart';

class TopModel{

  TopModel({required this.image, required this.color, required this.title});

  final String title;
  final Color color;
  final String image;

  static List<TopModel> topModel = [
    TopModel(
      title: AppTexts.title1, 
      color: AppColors.orange, 
      image: AppAssets.img1,
    ),
    TopModel(
      title: AppTexts.title2, 
      color: AppColors.blue, 
      image: AppAssets.img4,
    ),
    TopModel(
      title: AppTexts.title3, 
      color: AppColors.green, 
      image: AppAssets.img3,
    ),
  ];
  
}