import 'package:e_commerce_app/ui/pages/home/widgets/categories_view.dart';
import 'package:e_commerce_app/ui/pages/home/widgets/mid_view.dart';
import 'package:e_commerce_app/ui/pages/home/widgets/price_cutting_view.dart';
import 'package:e_commerce_app/ui/pages/home/widgets/top_view.dart';
import 'package:e_commerce_app/utils/constants/app_paddings.dart';
import 'package:e_commerce_app/utils/extentions/num_extentions.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
const HomeView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: AppPaddings.a20,
      child: ListView(
          children: [
            const TopView(),
            20.h,
            const PriceCuttingView(),
            10.h,
            const CategoriesView(),
            10.h,
            const MidView(),
          ],
        ),
    );
  }
}