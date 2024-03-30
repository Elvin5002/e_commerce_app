import 'package:e_commerce_app/constants/app_paddings.dart';
import 'package:e_commerce_app/extentions/num_extentions.dart';
import 'package:e_commerce_app/ui/pages/home/widgets/bottom_nav_bar.dart';
import 'package:e_commerce_app/ui/pages/home/widgets/categories_view.dart';
import 'package:e_commerce_app/ui/pages/home/widgets/mid_view.dart';
import 'package:e_commerce_app/ui/pages/home/widgets/price_cutting_view.dart';
import 'package:e_commerce_app/ui/pages/home/widgets/top_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffafafa),
      //appBar: TopView(),
      //minimum: EdgeInsets.all(16.0),
      body: Padding(
      padding: AppPaddings.a20,
      child: Column(
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
    ),
    bottomNavigationBar: const SafeArea(child: BottomNavBar()),
    );
  }
}
