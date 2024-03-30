import 'package:e_commerce_app/constants/app_colors.dart';
import 'package:e_commerce_app/constants/app_radiuses.dart';
import 'package:e_commerce_app/models/home_model.dart';
import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
const ImageView({ Key? key, required this.item }) : super(key: key);

  final HomeModel item;

  @override
  Widget build(BuildContext context){
    return Container(
      height: 250,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.lightgrey,
        borderRadius: AppRadiuses.a10
      ),
      child: Image.asset(item.image),
    );
  }
}