import 'package:e_commerce_app/constants/app_colors.dart';
import 'package:e_commerce_app/models/top_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotsIndigator extends StatelessWidget {
const DotsIndigator({ Key? key, required this.pageController}) : super(key: key);

final PageController pageController;

  @override
  Widget build(BuildContext context) {
    List<TopModel> items = TopModel.topModel;
    return SmoothPageIndicator(
      controller: pageController,
      count: items.length,
      effect: const WormEffect(
        activeDotColor: AppColors.blue,
        dotHeight: 12,
        dotWidth: 12,
        spacing: 4,
      ),
      onDotClicked: (i) => pageController.jumpToPage(i),
    );
  }
}