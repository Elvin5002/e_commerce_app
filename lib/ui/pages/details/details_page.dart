import '../../../data/models/product_model.dart';
import 'widgets/custom_app_bar.dart';
import '../../../utils/constants/app_paddings.dart';
import '../../../utils/extentions/num_extentions.dart';
import 'widgets/bottom_view.dart';
import 'widgets/image_view.dart';
import 'widgets/mid_view.dart';
import 'widgets/size_icon_view.dart';
import 'widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key, required this.item}) : super(key: key);

  final ProductModel item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPaddings.a20,
          child: Column(
            children: [
              ImageView(item: item),
              20.h,
              MidView(item: item),
              10.h,
              const SizeIconView(),
              20.h,
              BottomView(item: item,),
              20.h,
              BottomNavBar(item: item)
            ],
          ),
        ),
      ),
    );
  }
}
