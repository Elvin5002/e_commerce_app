import 'package:e_commerce_app/constants/app_colors.dart';
import 'package:e_commerce_app/constants/app_icons.dart';
import 'package:e_commerce_app/constants/app_texts.dart';
import 'package:e_commerce_app/extentions/num_extentions.dart';
import 'package:e_commerce_app/models/home_model.dart';
import 'package:e_commerce_app/ui/pages/home/widgets/product_fav_icon.dart';
import 'package:e_commerce_app/ui/widgets/subtitle_icon.dart';
import 'package:flutter/material.dart';

class MidView extends StatelessWidget {
  const MidView({Key? key, required this.item}) : super(key: key);

  final HomeModel item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      //mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SubtitleIcon(text: item.title),
        10.h,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(item.description, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),), 
            const ProductFavIcon()
          ],
        ),
        15.h,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcons.ratio,
                Text(
                  item.ratio,
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                2.w,
                const Text(AppTexts.review, style: TextStyle(fontSize: 12))
              ],
            ),
            Container(
              width: 2,
              height: 20,
              color: AppColors.lightgrey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.purchasedCount,
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                2.w,
                const Text(AppTexts.purchased, style: TextStyle(fontSize: 12))
              ],
            ),
            Container(
              width: 2,
              height: 20,
              color: AppColors.lightgrey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.stockCount,
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                2.w,
                const Text(AppTexts.stock, style: TextStyle(fontSize: 12),)
              ],
            ),
          ],
        ),
        10.h,
        const Text(AppTexts.size, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
      ],
    );
  }
}
