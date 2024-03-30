import 'package:e_commerce_app/constants/app_paddings.dart';
import 'package:e_commerce_app/constants/app_texts.dart';
import 'package:e_commerce_app/extentions/num_extentions.dart';
import 'package:e_commerce_app/models/home_model.dart';
import 'package:e_commerce_app/ui/pages/details/widgets/bottom_view.dart';
import 'package:e_commerce_app/ui/pages/details/widgets/image_view.dart';
import 'package:e_commerce_app/ui/pages/details/widgets/mid_view.dart';
import 'package:e_commerce_app/ui/pages/details/widgets/size_icon_view.dart';
import 'package:e_commerce_app/ui/pages/details/widgets/bottom_nav_bar.dart';
import 'package:e_commerce_app/ui/widgets/top_icons.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key, required this.item}) : super(key: key);

  final HomeModel item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context), 
          icon: const Icon(Icons.arrow_back_rounded),
        ),
        title: const Text(AppTexts.detail),
        centerTitle: true,
        actions: [
          const TopIcons(icon: Icons.share_outlined,),
          5.w,
          const TopIcons(icon: Icons.message_outlined),
          5.w,
        ],
      ),
      //bottomNavigationBar: const SafeArea(child: BottomNavBar()),
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
