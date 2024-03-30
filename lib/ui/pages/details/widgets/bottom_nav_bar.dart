import 'package:e_commerce_app/constants/app_colors.dart';
import 'package:e_commerce_app/constants/app_icons.dart';
import 'package:e_commerce_app/constants/app_radiuses.dart';
import 'package:e_commerce_app/constants/app_texts.dart';
import 'package:e_commerce_app/models/home_model.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key, required this.item}) : super(key: key);

  final HomeModel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, 
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(AppTexts.price),
            Text(
              item.price,
              style: const TextStyle(color: AppColors.orange, fontSize: 22.0, fontWeight: FontWeight.w500),
            )
          ],
        ),
        GestureDetector(
          onTap: () {},
          child: Row(
            children: [
              Container(
                width: 70,
                height: 50,
                decoration: const BoxDecoration(
                  color: AppColors.orange,
                  borderRadius: AppRadiuses.tbL10,
                ),
                child: AppIcons.basket
              ),
              Container(
                width: 120,
                height: 50,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: AppColors.black,
                  borderRadius: AppRadiuses.tbR10,
                ),
                child: const Text(
                  AppTexts.buy,
                  style: TextStyle(color: AppColors.white, fontSize: 16),
                ),
              )
            ],
          ))
    ]);
  }
}
