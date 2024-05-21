import 'package:e_commerce_app/data/models/product_model.dart';
import 'package:e_commerce_app/utils/constants/app_colors.dart';
import 'package:e_commerce_app/utils/constants/app_icons.dart';
import 'package:e_commerce_app/utils/constants/app_paddings.dart';
import 'package:e_commerce_app/utils/constants/app_radiuses.dart';
import 'package:e_commerce_app/utils/constants/app_text_styles.dart';
import 'package:e_commerce_app/utils/extentions/num_extentions.dart';
import 'package:e_commerce_app/ui/pages/home/widgets/product_image.dart';
import 'package:e_commerce_app/ui/widgets/subtitle_icon.dart';
import 'package:flutter/material.dart';

class MidItems extends StatelessWidget {
  const MidItems({Key? key, required this.onPress, required this.items})
      : super(key: key);

  final ProductModel items;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPress,
        child: Column(
          children: [
            ProductImage(image: items.image!),
            Container(
              //height: 150,
              padding: AppPaddings.a5,
              decoration: const BoxDecoration(
                  color: AppColors.white, borderRadius: AppRadiuses.lrB10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    items.title!,
                    style: AppTextStyles.descStyle,
                    maxLines: 3,
                    //overflow: TextOverflow.ellipsis,
                  ),
                  5.h,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          AppIcons.ratio,
                          Text(items.rating!.rate.toString(),
                              style: AppTextStyles.ratioStyle)
                        ],
                      ),
                      Text('\$${items.price}',
                          style: AppTextStyles.priceStyle)
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
