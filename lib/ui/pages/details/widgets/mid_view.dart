import 'package:e_commerce_app/data/models/product_model.dart';
import 'package:e_commerce_app/utils/constants/app_colors.dart';
import 'package:e_commerce_app/utils/constants/app_icons.dart';
import 'package:e_commerce_app/utils/constants/app_texts.dart';
import 'package:e_commerce_app/utils/extentions/num_extentions.dart';
import 'package:e_commerce_app/ui/pages/home/widgets/product_fav_icon.dart';
import 'package:e_commerce_app/ui/widgets/subtitle_icon.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/app_text_styles.dart';

class MidView extends StatelessWidget {
  const MidView({Key? key, required this.item}) : super(key: key);

  final ProductModel item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      //mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 300,
              child: Text(
                item.title!,
                style: AppTextStyles.descStyle,
                //maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
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
                  item.rating!.rate.toString(),
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                2.w,
                Text('(${item.rating!.count})', style: TextStyle(fontSize: 12))
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
                  item.rating!.count.toString(),
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
                  item.rating!.count.toString(),
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
